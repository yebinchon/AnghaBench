; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_path_rename.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_path_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, i8*, i8*)* @path_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_rename(%struct.mount* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @sqlite3_bind_int64(i32 %15, i32 1, i64 %16)
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @bind_path(i32 %21, i32 2, i8* %22)
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @memcpy(i8* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8 47, i8* %32, align 1
  %33 = load %struct.mount*, %struct.mount** %4, align 8
  %34 = getelementptr inbounds %struct.mount, %struct.mount* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  %39 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %40 = call i32 @sqlite3_bind_blob(i32 %36, i32 3, i8* %27, i64 %38, i32 %39)
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %27, i64 %41
  store i8 48, i8* %42, align 1
  %43 = load %struct.mount*, %struct.mount** %4, align 8
  %44 = getelementptr inbounds %struct.mount, %struct.mount* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  %49 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %50 = call i32 @sqlite3_bind_blob(i32 %46, i32 4, i8* %27, i64 %48, i32 %49)
  %51 = load %struct.mount*, %struct.mount** %4, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %57 = call i32 @sqlite3_bind_blob(i32 %54, i32 5, i8* %27, i64 %55, i32 %56)
  %58 = load %struct.mount*, %struct.mount** %4, align 8
  %59 = load %struct.mount*, %struct.mount** %4, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @db_exec_reset(%struct.mount* %58, i32 %62)
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i64) #1

declare dso_local i32 @bind_path(i32, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sqlite3_bind_blob(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @db_exec_reset(%struct.mount*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
