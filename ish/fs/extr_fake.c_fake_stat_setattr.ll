; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fake_stat_setattr.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fake_stat_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ish_stat = type { i32, i32, i32 }
%struct.attr = type { i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ish_stat*, i64, i64)* @fake_stat_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fake_stat_setattr(%struct.ish_stat* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.attr, align 4
  %5 = alloca %struct.ish_stat*, align 8
  %6 = bitcast %struct.attr* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 4
  store %struct.ish_stat* %0, %struct.ish_stat** %5, align 8
  %9 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %35 [
    i32 128, label %11
    i32 130, label %16
    i32 129, label %21
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ish_stat*, %struct.ish_stat** %5, align 8
  %15 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %35

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ish_stat*, %struct.ish_stat** %5, align 8
  %20 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load %struct.ish_stat*, %struct.ish_stat** %5, align 8
  %23 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @S_IFMT, align 4
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S_IFMT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = or i32 %26, %31
  %33 = load %struct.ish_stat*, %struct.ish_stat** %5, align 8
  %34 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %3, %21, %16, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
