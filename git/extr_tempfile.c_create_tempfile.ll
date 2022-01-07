; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_create_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_create_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot fix permission bits on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tempfile* @create_tempfile(i8* %0) #0 {
  %2 = alloca %struct.tempfile*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tempfile*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call %struct.tempfile* (...) @new_tempfile()
  store %struct.tempfile* %6, %struct.tempfile** %4, align 8
  %7 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %8 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %7, i32 0, i32 1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strbuf_add_absolute_path(%struct.TYPE_2__* %8, i8* %9)
  %11 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %12 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_EXCL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_CLOEXEC, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @open(i32 %14, i32 %21, i32 438)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %25 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @O_CLOEXEC, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %1
  %29 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %30 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %39 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @O_RDWR, align 4
  %43 = load i32, i32* @O_CREAT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @O_EXCL, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @open(i32 %41, i32 %46, i32 438)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %50 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %37, %33, %28, %1
  %52 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %53 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %58 = call i32 @deactivate_tempfile(%struct.tempfile* %57)
  store %struct.tempfile* null, %struct.tempfile** %2, align 8
  br label %79

59:                                               ; preds = %51
  %60 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %61 = call i32 @activate_tempfile(%struct.tempfile* %60)
  %62 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %63 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @adjust_shared_perm(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  %71 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = call i32 @delete_tempfile(%struct.tempfile** %4)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* @errno, align 4
  store %struct.tempfile* null, %struct.tempfile** %2, align 8
  br label %79

77:                                               ; preds = %59
  %78 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  store %struct.tempfile* %78, %struct.tempfile** %2, align 8
  br label %79

79:                                               ; preds = %77, %68, %56
  %80 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  ret %struct.tempfile* %80
}

declare dso_local %struct.tempfile* @new_tempfile(...) #1

declare dso_local i32 @strbuf_add_absolute_path(%struct.TYPE_2__*, i8*) #1

declare dso_local i8* @open(i32, i32, i32) #1

declare dso_local i32 @deactivate_tempfile(%struct.tempfile*) #1

declare dso_local i32 @activate_tempfile(%struct.tempfile*) #1

declare dso_local i64 @adjust_shared_perm(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @delete_tempfile(%struct.tempfile**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
