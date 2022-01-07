; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_list_all_cmds_help.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_list_all_cmds_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cmdname_help = type { i8*, i32, i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [61 x i8] c"See 'git help <command>' to read about a specific subcommand\00", align 1
@main_categories = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"External commands\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1
@get_alias = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Command aliases\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_all_cmds_help() #0 {
  %1 = alloca %struct.string_list, align 8
  %2 = alloca %struct.string_list, align 8
  %3 = alloca %struct.cmdname_help*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast %struct.string_list* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %8 = bitcast %struct.string_list* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %9 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @printf_ln(i8* %9)
  %11 = load i32, i32* @main_categories, align 4
  %12 = call i32 @print_cmd_by_category(i32 %11, i32* %5)
  %13 = call i32 @list_all_other_cmds(%struct.string_list* %1)
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %0
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %21

38:                                               ; preds = %21
  %39 = call i32 @string_list_clear(%struct.string_list* %1, i32 0)
  %40 = load i32, i32* @get_alias, align 4
  %41 = call i32 @git_config(i32 %40, %struct.string_list* %2)
  %42 = call i32 @string_list_sort(%struct.string_list* %2)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %65, %38
  %44 = load i32, i32* %4, align 4
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strlen(i8* %55)
  store i64 %56, i64* %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %43

68:                                               ; preds = %43
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %130

72:                                               ; preds = %68
  %73 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %76 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = call i32 @ALLOC_ARRAY(%struct.cmdname_help* %75, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %115, %72
  %81 = load i32, i32* %4, align 4
  %82 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %118

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %93, i64 %95
  %97 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  %98 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %105, i64 %107
  %109 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %108, i32 0, i32 2
  store i32 %104, i32* %109, align 4
  %110 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %110, i64 %112
  %114 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %113, i32 0, i32 1
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %85
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %80

118:                                              ; preds = %80
  %119 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %120 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %119, i64 %122
  %124 = getelementptr inbounds %struct.cmdname_help, %struct.cmdname_help* %123, i32 0, i32 0
  store i8* null, i8** %124, align 8
  %125 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @print_command_list(%struct.cmdname_help* %125, i32 1, i32 %126)
  %128 = load %struct.cmdname_help*, %struct.cmdname_help** %3, align 8
  %129 = call i32 @free(%struct.cmdname_help* %128)
  br label %130

130:                                              ; preds = %118, %68
  %131 = call i32 @string_list_clear(%struct.string_list* %2, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf_ln(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @print_cmd_by_category(i32, i32*) #2

declare dso_local i32 @list_all_other_cmds(%struct.string_list*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @git_config(i32, %struct.string_list*) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ALLOC_ARRAY(%struct.cmdname_help*, i32) #2

declare dso_local i32 @print_command_list(%struct.cmdname_help*, i32, i32) #2

declare dso_local i32 @free(%struct.cmdname_help*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
