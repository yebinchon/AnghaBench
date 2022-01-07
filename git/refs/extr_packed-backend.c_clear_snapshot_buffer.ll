; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_clear_snapshot_buffer.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_clear_snapshot_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot = type { i32*, i32*, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"error ummapping packed-refs file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snapshot*)* @clear_snapshot_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_snapshot_buffer(%struct.snapshot* %0) #0 {
  %2 = alloca %struct.snapshot*, align 8
  store %struct.snapshot* %0, %struct.snapshot** %2, align 8
  %3 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %4 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %9 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %12 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %15 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = ptrtoint i32* %13 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @munmap(i32* %10, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %7
  %25 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %26 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @die_errno(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %7
  %32 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %33 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %36 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free(i32* %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %41 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %43 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %45 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  ret void
}

declare dso_local i64 @munmap(i32*, i32) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
