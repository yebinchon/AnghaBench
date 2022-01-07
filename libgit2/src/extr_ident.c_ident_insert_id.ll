; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_ident.c_ident_insert_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_ident.c_ident_insert_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"$Id: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" $\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32*)* @ident_insert_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_insert_id(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8* %27, i8** %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @git_filter_source_id(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

33:                                               ; preds = %3
  %34 = trunc i64 %17 to i32
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @git_filter_source_id(i32* %35)
  %37 = call i32 @git_oid_tostr(i8* %19, i32 %34, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ident_find_id(i8** %10, i8** %11, i8* %40, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

48:                                               ; preds = %33
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %49 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = add i64 %55, 5
  %57 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = add i64 %59, 2
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = add i64 %60, %65
  store i64 %66, i64* %13, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @git_buf_grow(%struct.TYPE_8__* %67, i64 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

72:                                               ; preds = %48
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %77 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = call i32 @git_buf_set(%struct.TYPE_8__* %73, i8* %76, i64 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = call i32 @git_buf_put(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @git_buf_put(%struct.TYPE_8__* %87, i8* %19, i64 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = call i32 @git_buf_put(%struct.TYPE_8__* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = call i32 @git_buf_put(%struct.TYPE_8__* %93, i8* %94, i64 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = call i64 @git_buf_oom(%struct.TYPE_8__* %101)
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 -1, i32 0
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %72, %71, %46, %31
  %107 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_filter_source_id(i32*) #2

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #2

declare dso_local i64 @ident_find_id(i8**, i8**, i8*, i32) #2

declare dso_local i64 @git_buf_grow(%struct.TYPE_8__*, i64) #2

declare dso_local i32 @git_buf_set(%struct.TYPE_8__*, i8*, i64) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_8__*, i8*, i64) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
