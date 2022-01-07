; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_wp512.c_wp512_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_wp512.c_wp512_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.wp512_ctx = type { i64*, i64*, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @wp512_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wp512_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.wp512_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %5 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %6 = call %struct.wp512_ctx* @shash_desc_ctx(%struct.shash_desc* %5)
  store %struct.wp512_ctx* %6, %struct.wp512_ctx** %3, align 8
  %7 = load %struct.wp512_ctx*, %struct.wp512_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @memset(i32 %9, i32 0, i32 32)
  %11 = load %struct.wp512_ctx*, %struct.wp512_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.wp512_ctx*, %struct.wp512_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.wp512_ctx*, %struct.wp512_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %29, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.wp512_ctx*, %struct.wp512_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %19

32:                                               ; preds = %19
  ret i32 0
}

declare dso_local %struct.wp512_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
