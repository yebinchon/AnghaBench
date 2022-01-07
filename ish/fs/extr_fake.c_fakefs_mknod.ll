; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_mknod.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.mount*, i8*, i32, i32)* }
%struct.mount = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ish_stat = type { i32, i64, i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@realfs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i32, i64)* @fakefs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_mknod(%struct.mount* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ish_stat, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 438, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @S_ISBLK(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @S_ISCHR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @S_ISSOCK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %16, %4
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load %struct.mount*, %struct.mount** %6, align 8
  %36 = call i32 @db_begin(%struct.mount* %35)
  %37 = load i32 (%struct.mount*, i8*, i32, i32)*, i32 (%struct.mount*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @realfs, i32 0, i32 0), align 8
  %38 = load %struct.mount*, %struct.mount** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 %37(%struct.mount* %38, i8* %39, i32 %40, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.mount*, %struct.mount** %6, align 8
  %46 = call i32 @db_rollback(%struct.mount* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %12, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %12, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %12, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @S_ISBLK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @S_ISCHR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %48
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %12, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.mount*, %struct.mount** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @path_create(%struct.mount* %71, i8* %72, %struct.ish_stat* %12)
  %74 = load %struct.mount*, %struct.mount** %6, align 8
  %75 = call i32 @db_commit(%struct.mount* %74)
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %70, %44
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @path_create(%struct.mount*, i8*, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
