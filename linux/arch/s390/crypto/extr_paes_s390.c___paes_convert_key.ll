; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c___paes_convert_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c___paes_convert_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_blob = type { i32, i32 }
%struct.pkey_protkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_blob*, %struct.pkey_protkey*)* @__paes_convert_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__paes_convert_key(%struct.key_blob* %0, %struct.pkey_protkey* %1) #0 {
  %3 = alloca %struct.key_blob*, align 8
  %4 = alloca %struct.pkey_protkey*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.key_blob* %0, %struct.key_blob** %3, align 8
  store %struct.pkey_protkey* %1, %struct.pkey_protkey** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.key_blob*, %struct.key_blob** %3, align 8
  %12 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.key_blob*, %struct.key_blob** %3, align 8
  %15 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pkey_protkey*, %struct.pkey_protkey** %4, align 8
  %18 = call i32 @pkey_keyblob2pkey(i32 %13, i32 %16, %struct.pkey_protkey* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %26

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %21, %7
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @pkey_keyblob2pkey(i32, i32, %struct.pkey_protkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
