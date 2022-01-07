; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_path_link.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_path_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"fakefs link(%s, %s): nonexistent src path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, i8*, i8*)* @path_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_link(%struct.mount* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mount*, %struct.mount** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @path_get_inode(%struct.mount* %8, i8* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @bind_path(i32 %21, i32 1, i8* %22)
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @sqlite3_bind_int64(i32 %27, i32 2, i64 %28)
  %30 = load %struct.mount*, %struct.mount** %4, align 8
  %31 = load %struct.mount*, %struct.mount** %4, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @db_exec_reset(%struct.mount* %30, i32 %34)
  ret void
}

declare dso_local i64 @path_get_inode(%struct.mount*, i8*) #1

declare dso_local i32 @die(i8*, i8*, i8*) #1

declare dso_local i32 @bind_path(i32, i32, i8*) #1

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i64) #1

declare dso_local i32 @db_exec_reset(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
