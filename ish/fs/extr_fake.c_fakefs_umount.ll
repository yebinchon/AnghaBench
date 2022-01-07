; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_umount.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sqlite failed to close: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @fakefs_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_umount(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %4 = load %struct.mount*, %struct.mount** %2, align 8
  %5 = getelementptr inbounds %struct.mount, %struct.mount* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %90

8:                                                ; preds = %1
  %9 = load %struct.mount*, %struct.mount** %2, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sqlite3_finalize(i32 %12)
  %14 = load %struct.mount*, %struct.mount** %2, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sqlite3_finalize(i32 %17)
  %19 = load %struct.mount*, %struct.mount** %2, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_finalize(i32 %22)
  %24 = load %struct.mount*, %struct.mount** %2, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sqlite3_finalize(i32 %27)
  %29 = load %struct.mount*, %struct.mount** %2, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sqlite3_finalize(i32 %32)
  %34 = load %struct.mount*, %struct.mount** %2, align 8
  %35 = getelementptr inbounds %struct.mount, %struct.mount* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sqlite3_finalize(i32 %37)
  %39 = load %struct.mount*, %struct.mount** %2, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sqlite3_finalize(i32 %42)
  %44 = load %struct.mount*, %struct.mount** %2, align 8
  %45 = getelementptr inbounds %struct.mount, %struct.mount* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3_finalize(i32 %47)
  %49 = load %struct.mount*, %struct.mount** %2, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sqlite3_finalize(i32 %52)
  %54 = load %struct.mount*, %struct.mount** %2, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sqlite3_finalize(i32 %57)
  %59 = load %struct.mount*, %struct.mount** %2, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sqlite3_finalize(i32 %62)
  %64 = load %struct.mount*, %struct.mount** %2, align 8
  %65 = getelementptr inbounds %struct.mount, %struct.mount* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sqlite3_finalize(i32 %67)
  %69 = load %struct.mount*, %struct.mount** %2, align 8
  %70 = getelementptr inbounds %struct.mount, %struct.mount* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sqlite3_finalize(i32 %72)
  %74 = load %struct.mount*, %struct.mount** %2, align 8
  %75 = getelementptr inbounds %struct.mount, %struct.mount* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @sqlite3_finalize(i32 %77)
  %79 = load %struct.mount*, %struct.mount** %2, align 8
  %80 = getelementptr inbounds %struct.mount, %struct.mount* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @sqlite3_close(i64 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @SQLITE_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %8
  br label %90

90:                                               ; preds = %89, %1
  ret i32 0
}

declare dso_local i32 @sqlite3_finalize(i32) #1

declare dso_local i32 @sqlite3_close(i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
