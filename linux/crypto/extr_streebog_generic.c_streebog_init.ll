; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.streebog_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@STREEBOG256_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @streebog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @streebog_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.streebog_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %6 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %7 = call %struct.streebog_state* @shash_desc_ctx(%struct.shash_desc* %6)
  store %struct.streebog_state* %7, %struct.streebog_state** %3, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %9 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @crypto_shash_digestsize(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.streebog_state*, %struct.streebog_state** %3, align 8
  %13 = call i32 @memset(%struct.streebog_state* %12, i32 0, i32 8)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @STREEBOG256_DIGEST_SIZE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = call i32 @cpu_to_le64(i32 16843009)
  %23 = load %struct.streebog_state*, %struct.streebog_state** %3, align 8
  %24 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %22, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %14
  ret i32 0
}

declare dso_local %struct.streebog_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @memset(%struct.streebog_state*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
