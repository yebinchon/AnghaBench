; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_path_get_inode.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_path_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_get_inode(%struct.mount* %0, i8* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mount*, %struct.mount** %3, align 8
  %7 = getelementptr inbounds %struct.mount, %struct.mount* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @bind_path(i32 %9, i32 1, i8* %10)
  store i32 0, i32* %5, align 4
  %12 = load %struct.mount*, %struct.mount** %3, align 8
  %13 = load %struct.mount*, %struct.mount** %3, align 8
  %14 = getelementptr inbounds %struct.mount, %struct.mount* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @db_exec(%struct.mount* %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.mount*, %struct.mount** %3, align 8
  %21 = getelementptr inbounds %struct.mount, %struct.mount* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_column_int64(i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.mount*, %struct.mount** %3, align 8
  %27 = load %struct.mount*, %struct.mount** %3, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @db_reset(%struct.mount* %26, i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @bind_path(i32, i32, i8*) #1

declare dso_local i64 @db_exec(%struct.mount*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32, i32) #1

declare dso_local i32 @db_reset(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
