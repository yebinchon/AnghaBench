; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_list_cmds_by_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_list_cmds_by_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"completion.commands\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_cmds_by_config(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %6 = call i64 @git_config_get_string_const(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  %10 = load %struct.string_list*, %struct.string_list** %2, align 8
  %11 = call i32 @string_list_sort(%struct.string_list* %10)
  %12 = load %struct.string_list*, %struct.string_list** %2, align 8
  %13 = call i32 @string_list_remove_duplicates(%struct.string_list* %12, i32 0)
  br label %14

14:                                               ; preds = %57, %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strchrnul(i8* %20, i8 signext 32)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @strbuf_add(%struct.strbuf* %4, i8* %22, i32 %28)
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load %struct.string_list*, %struct.string_list** %2, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @string_list_remove(%struct.string_list* %37, i8* %40, i32 0)
  br label %47

42:                                               ; preds = %18
  %43 = load %struct.string_list*, %struct.string_list** %2, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @string_list_insert(%struct.string_list* %43, i8* %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = call i32 @strbuf_release(%struct.strbuf* %4)
  br label %49

49:                                               ; preds = %54, %47
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  store i8* %58, i8** %3, align 8
  br label %14

59:                                               ; preds = %8, %14
  ret void
}

declare dso_local i64 @git_config_get_string_const(i8*, i8**) #1

declare dso_local i32 @string_list_sort(%struct.string_list*) #1

declare dso_local i32 @string_list_remove_duplicates(%struct.string_list*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @string_list_remove(%struct.string_list*, i8*, i32) #1

declare dso_local i32 @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
