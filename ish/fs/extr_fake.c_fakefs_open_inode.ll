; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_open_inode.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_open_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.fd* (%struct.mount*, i8*, i32, i32)* }
%struct.fd = type { i32*, i32 }
%struct.mount = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@_ENOENT = common dso_local global i64 0, align 8
@realfs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@O_RDWR_ = common dso_local global i32 0, align 4
@_EISDIR = common dso_local global i64 0, align 8
@O_RDONLY_ = common dso_local global i32 0, align 4
@fakefs_fdops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fd* @fakefs_open_inode(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca %struct.fd*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fd*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = call i32 @db_begin(%struct.mount* %9)
  %11 = load %struct.mount*, %struct.mount** %4, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sqlite3_bind_int64(i32* %15, i32 1, i32 %16)
  br label %18

18:                                               ; preds = %55, %2
  %19 = load %struct.mount*, %struct.mount** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @db_exec(%struct.mount* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @db_reset(%struct.mount* %24, i32* %25)
  %27 = load %struct.mount*, %struct.mount** %4, align 8
  %28 = call i32 @db_rollback(%struct.mount* %27)
  %29 = load i64, i64* @_ENOENT, align 8
  %30 = call %struct.fd* @ERR_PTR(i64 %29)
  store %struct.fd* %30, %struct.fd** %3, align 8
  br label %68

31:                                               ; preds = %18
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @sqlite3_column_text(i32* %32, i32 0)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %7, align 8
  %35 = load %struct.fd* (%struct.mount*, i8*, i32, i32)*, %struct.fd* (%struct.mount*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @realfs, i32 0, i32 0), align 8
  %36 = load %struct.mount*, %struct.mount** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @O_RDWR_, align 4
  %39 = call %struct.fd* %35(%struct.mount* %36, i8* %37, i32 %38, i32 0)
  store %struct.fd* %39, %struct.fd** %8, align 8
  %40 = load %struct.fd*, %struct.fd** %8, align 8
  %41 = call i64 @PTR_ERR(%struct.fd* %40)
  %42 = load i64, i64* @_EISDIR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.fd* (%struct.mount*, i8*, i32, i32)*, %struct.fd* (%struct.mount*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @realfs, i32 0, i32 0), align 8
  %46 = load %struct.mount*, %struct.mount** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @O_RDONLY_, align 4
  %49 = call %struct.fd* %45(%struct.mount* %46, i8* %47, i32 %48, i32 0)
  store %struct.fd* %49, %struct.fd** %8, align 8
  br label %50

50:                                               ; preds = %44, %31
  %51 = load %struct.fd*, %struct.fd** %8, align 8
  %52 = call i64 @PTR_ERR(%struct.fd* %51)
  %53 = load i64, i64* @_ENOENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %18

56:                                               ; preds = %50
  %57 = load %struct.mount*, %struct.mount** %4, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @db_reset(%struct.mount* %57, i32* %58)
  %60 = load %struct.mount*, %struct.mount** %4, align 8
  %61 = call i32 @db_commit(%struct.mount* %60)
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.fd*, %struct.fd** %8, align 8
  %64 = getelementptr inbounds %struct.fd, %struct.fd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.fd*, %struct.fd** %8, align 8
  %66 = getelementptr inbounds %struct.fd, %struct.fd* %65, i32 0, i32 0
  store i32* @fakefs_fdops, i32** %66, align 8
  %67 = load %struct.fd*, %struct.fd** %8, align 8
  store %struct.fd* %67, %struct.fd** %3, align 8
  br label %68

68:                                               ; preds = %56, %23
  %69 = load %struct.fd*, %struct.fd** %3, align 8
  ret %struct.fd* %69
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @db_exec(%struct.mount*, i32*) #1

declare dso_local i32 @db_reset(%struct.mount*, i32*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local %struct.fd* @ERR_PTR(i64) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @PTR_ERR(%struct.fd*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
