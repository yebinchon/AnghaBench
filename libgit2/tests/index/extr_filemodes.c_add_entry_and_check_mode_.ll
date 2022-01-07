; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_add_entry_and_check_mode_.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_add_entry_and_check_mode_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"exec_off\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot find original index entry\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"filemodes/explicit_test\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot add index entry\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Cannot add index entry from buffer\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot find new index entry\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Expected mode does not match index\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%07o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64, i8*, i32)* @add_entry_and_check_mode_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_entry_and_check_mode_(i32* %0, i32 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @git_index_find(i64* %11, i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @clar__assert(i32 %22, i8* %23, i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 1)
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call %struct.TYPE_8__* @git_index_get_byindex(i32* %26, i64 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %12, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = call i32 @memcpy(%struct.TYPE_8__* %13, %struct.TYPE_8__* %29, i32 16)
  br label %33

31:                                               ; preds = %5
  %32 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 16)
  br label %33

33:                                               ; preds = %31, %17
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @git_index_add(i32* %40, %struct.TYPE_8__* %13)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @clar__assert(i32 %44, i8* %45, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 1)
  br label %60

48:                                               ; preds = %33
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @git_index_add_from_buffer(i32* %49, %struct.TYPE_8__* %13, i8* %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @clar__assert(i32 %56, i8* %57, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 1)
  br label %60

60:                                               ; preds = %48, %39
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @git_index_find(i64* %11, i32* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @clar__assert(i32 %65, i8* %66, i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 1)
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call %struct.TYPE_8__* @git_index_get_byindex(i32* %69, i64 %70)
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %12, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %8, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @clar__assert_equal(i8* %72, i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %77, i32 %79)
  ret void
}

declare dso_local i32 @clar__assert(i32, i8*, i32, i8*, i32*, i32) #1

declare dso_local i32 @git_index_find(i64*, i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @git_index_get_byindex(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @clar__assert_equal(i8*, i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
