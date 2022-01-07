; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_raceproof_create_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_raceproof_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@REMOVE_DIR_EMPTY_ONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SCLD_OK = common dso_local global i32 0, align 4
@SCLD_VANISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raceproof_create_file(i8* %0, i32 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %13 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @assert(i8 signext %15)
  br label %17

17:                                               ; preds = %70, %45, %3
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 %18(i8* %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %85

26:                                               ; preds = %17
  %27 = load i32, i32* @errno, align 4
  %28 = load i32, i32* @EISDIR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp sgt i32 %31, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* @REMOVE_DIR_EMPTY_ONLY, align 4
  %43 = call i32 @remove_dir_recursively(%struct.strbuf* %9, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %17

46:                                               ; preds = %41
  br label %84

47:                                               ; preds = %30, %26
  %48 = load i32, i32* @errno, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %80, %62
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @safe_create_leading_directories(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @SCLD_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %17

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SCLD_VANISHED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = icmp sgt i32 %77, 0
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %63, label %82

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82, %51, %47
  br label %84

84:                                               ; preds = %83, %46
  br label %85

85:                                               ; preds = %84, %25
  %86 = call i32 @strbuf_release(%struct.strbuf* %9)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* @errno, align 4
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i8 signext) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i32 @safe_create_leading_directories(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
