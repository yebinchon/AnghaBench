; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bread_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitreader = type { i32, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bread_init(%struct.bitreader* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bitreader*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.bitreader* %0, %struct.bitreader** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %9 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %12 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %19 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %21 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 24
  %27 = add nsw i32 %26, 8388608
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 7
  %30 = shl i32 %27, %29
  %31 = load %struct.bitreader*, %struct.bitreader** %4, align 8
  %32 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
