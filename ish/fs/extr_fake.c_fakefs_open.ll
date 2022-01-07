; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_open.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.fd* (%struct.mount*, i8*, i32, i32)* }
%struct.fd = type { i64, i32* }
%struct.mount = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ish_stat = type { i32, i64, i32, i32 }

@realfs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@O_CREAT_ = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@_ENOENT = common dso_local global i32 0, align 4
@fakefs_fdops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fd* (%struct.mount*, i8*, i32, i32)* @fakefs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fd* @fakefs_open(%struct.mount* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fd*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd*, align 8
  %11 = alloca %struct.ish_stat, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fd* (%struct.mount*, i8*, i32, i32)*, %struct.fd* (%struct.mount*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @realfs, i32 0, i32 0), align 8
  %13 = load %struct.mount*, %struct.mount** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.fd* %12(%struct.mount* %13, i8* %14, i32 %15, i32 438)
  store %struct.fd* %16, %struct.fd** %10, align 8
  %17 = load %struct.fd*, %struct.fd** %10, align 8
  %18 = call i64 @IS_ERR(%struct.fd* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load %struct.fd*, %struct.fd** %10, align 8
  store %struct.fd* %21, %struct.fd** %5, align 8
  br label %80

22:                                               ; preds = %4
  %23 = load %struct.mount*, %struct.mount** %6, align 8
  %24 = call i32 @db_begin(%struct.mount* %23)
  %25 = load %struct.mount*, %struct.mount** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @path_get_inode(%struct.mount* %25, i8* %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.fd*, %struct.fd** %10, align 8
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @O_CREAT_, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @S_IFREG, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.fd*, %struct.fd** %10, align 8
  %50 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %35
  %54 = load %struct.mount*, %struct.mount** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @path_create(%struct.mount* %54, i8* %55, %struct.ish_stat* %11)
  %57 = load %struct.mount*, %struct.mount** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @path_get_inode(%struct.mount* %57, i8* %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.fd*, %struct.fd** %10, align 8
  %62 = getelementptr inbounds %struct.fd, %struct.fd* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %53, %35
  br label %64

64:                                               ; preds = %63, %22
  %65 = load %struct.mount*, %struct.mount** %6, align 8
  %66 = call i32 @db_commit(%struct.mount* %65)
  %67 = load %struct.fd*, %struct.fd** %10, align 8
  %68 = getelementptr inbounds %struct.fd, %struct.fd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.fd*, %struct.fd** %10, align 8
  %73 = call i32 @fd_close(%struct.fd* %72)
  %74 = load i32, i32* @_ENOENT, align 4
  %75 = call %struct.fd* @ERR_PTR(i32 %74)
  store %struct.fd* %75, %struct.fd** %5, align 8
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.fd*, %struct.fd** %10, align 8
  %78 = getelementptr inbounds %struct.fd, %struct.fd* %77, i32 0, i32 1
  store i32* @fakefs_fdops, i32** %78, align 8
  %79 = load %struct.fd*, %struct.fd** %10, align 8
  store %struct.fd* %79, %struct.fd** %5, align 8
  br label %80

80:                                               ; preds = %76, %71, %20
  %81 = load %struct.fd*, %struct.fd** %5, align 8
  ret %struct.fd* %81
}

declare dso_local i64 @IS_ERR(%struct.fd*) #1

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i8* @path_get_inode(%struct.mount*, i8*) #1

declare dso_local i32 @path_create(%struct.mount*, i8*, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

declare dso_local i32 @fd_close(%struct.fd*) #1

declare dso_local %struct.fd* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
