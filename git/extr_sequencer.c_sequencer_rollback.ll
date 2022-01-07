; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_rollback.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot read '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"stored pre-cherry-pick HEAD file '%s' is corrupt\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"cannot abort from a branch yet to be born\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"You seem to have moved HEAD. Not rewinding, check your HEAD!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_rollback(%struct.repository* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = call i32 (...) @git_path_head_file()
  %12 = call i32* @fopen(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.repository*, %struct.repository** %4, align 8
  %21 = call i32 @rollback_single_pick(%struct.repository* %20)
  store i32 %21, i32* %3, align 4
  br label %88

22:                                               ; preds = %15, %2
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @git_path_head_file()
  %28 = call i32 @error_errno(i8* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @strbuf_getline_lf(%struct.strbuf* %8, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 (...) @git_path_head_file()
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @ferror(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @errno, align 8
  %41 = call i8* @strerror(i64 %40)
  br label %44

42:                                               ; preds = %33
  %43 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i8* [ %41, %39 ], [ %43, %42 ]
  %46 = call i32 (i8*, ...) @error(i8* %34, i32 %35, i8* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  br label %86

49:                                               ; preds = %29
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @parse_oid_hex(i32 %53, %struct.object_id* %7, i8** %9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56, %49
  %62 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 (...) @git_path_head_file()
  %64 = call i32 (i8*, ...) @error(i8* %62, i32 %63)
  br label %86

65:                                               ; preds = %56
  %66 = call i64 @is_null_oid(%struct.object_id* %7)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 (i8*, ...) @error(i8* %69)
  br label %86

71:                                               ; preds = %65
  %72 = call i32 (...) @rollback_is_safe()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %76 = call i32 @warning(i8* %75)
  br label %82

77:                                               ; preds = %71
  %78 = call i64 @reset_merge(%struct.object_id* %7)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %86

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %74
  %83 = call i32 @strbuf_release(%struct.strbuf* %8)
  %84 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %85 = call i32 @sequencer_remove_state(%struct.replay_opts* %84)
  store i32 %85, i32* %3, align 4
  br label %88

86:                                               ; preds = %80, %68, %61, %44
  %87 = call i32 @strbuf_release(%struct.strbuf* %8)
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %82, %25, %19
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @git_path_head_file(...) #2

declare dso_local i32 @rollback_single_pick(%struct.repository*) #2

declare dso_local i32 @error_errno(i8*, i32) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @parse_oid_hex(i32, %struct.object_id*, i8**) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @rollback_is_safe(...) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i64 @reset_merge(%struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @sequencer_remove_state(%struct.replay_opts*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
