; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_diff_driver_add_patterns.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_diff_driver_add_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@REG_NEGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32)* @diff_driver_add_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_driver_add_patterns(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %13 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %73, %3
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_10__* @git_array_alloc(i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 33
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* @REG_NEGATE, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 10)
  store i8* %43, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @git_buf_set(%struct.TYPE_12__* %12, i8* %46, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  br label %59

56:                                               ; preds = %41
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @git_buf_sets(%struct.TYPE_12__* %12, i8* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %75

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @git_regexp_compile(i32* %65, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %63
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %9, align 8
  br label %15

75:                                               ; preds = %62, %15
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @git_array_pop(i32 %84)
  br label %86

86:                                               ; preds = %81, %78, %75
  %87 = call i32 @git_buf_dispose(%struct.TYPE_12__* %12)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %24
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @git_array_alloc(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @git_buf_set(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_regexp_compile(i32*, i32, i32) #2

declare dso_local i32 @git_array_pop(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
