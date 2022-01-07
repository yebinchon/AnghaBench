; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_to_strbuf.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_to_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.todo_list = type { i32, %struct.todo_item* }
%struct.todo_item = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.strbuf = type { i32 }

@TODO_COMMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@TODO_LIST_ABBREVIATE_CMDS = common dso_local global i32 0, align 4
@TODO_LIST_SHORTEN_IDS = common dso_local global i32 0, align 4
@TODO_MERGE = common dso_local global i64 0, align 8
@TODO_EDIT_MERGE_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" -c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" -C\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.todo_list*, %struct.strbuf*, i32, i32)* @todo_list_to_strbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @todo_list_to_strbuf(%struct.repository* %0, %struct.todo_list* %1, %struct.strbuf* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.todo_list*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.todo_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.todo_list* %1, %struct.todo_list** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %16 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %24, %20, %5
  %27 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %28 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %27, i32 0, i32 1
  %29 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  store %struct.todo_item* %29, %struct.todo_item** %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %137, %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %142

34:                                               ; preds = %30
  %35 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %36 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TODO_COMMENT, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %42 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %43 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %48 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %49 = call i32 @todo_item_get_arg(%struct.todo_list* %47, %struct.todo_item* %48)
  %50 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %49)
  br label %137

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @TODO_LIST_ABBREVIATE_CMDS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %58 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %59 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call signext i8 @command_to_char(i64 %60)
  %62 = call i32 @strbuf_addch(%struct.strbuf* %57, i8 signext %61)
  br label %70

63:                                               ; preds = %51
  %64 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %65 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %66 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @command_to_string(i64 %67)
  %69 = call i32 @strbuf_addstr(%struct.strbuf* %64, i8* %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %72 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %117

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @TODO_LIST_SHORTEN_IDS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %82 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = call i8* @short_commit_name(%struct.TYPE_4__* %83)
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %87 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i8* @oid_to_hex(i32* %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = phi i8* [ %84, %80 ], [ %91, %85 ]
  store i8* %93, i8** %14, align 8
  %94 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %95 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TODO_MERGE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %101 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TODO_EDIT_MERGE_MSG, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %108 = call i32 @strbuf_addstr(%struct.strbuf* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %112

109:                                              ; preds = %99
  %110 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %111 = call i32 @strbuf_addstr(%struct.strbuf* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %70
  %118 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %119 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %124 = call i32 @strbuf_addch(%struct.strbuf* %123, i8 signext 10)
  br label %136

125:                                              ; preds = %117
  %126 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %127 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %128 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.todo_list*, %struct.todo_list** %7, align 8
  %133 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %134 = call i32 @todo_item_get_arg(%struct.todo_list* %132, %struct.todo_item* %133)
  %135 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %131, i32 %134)
  br label %136

136:                                              ; preds = %125, %122
  br label %137

137:                                              ; preds = %136, %40
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  %140 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %141 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %140, i32 1
  store %struct.todo_item* %141, %struct.todo_item** %11, align 8
  br label %30

142:                                              ; preds = %30
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i32 @todo_item_get_arg(%struct.todo_list*, %struct.todo_item*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local signext i8 @command_to_char(i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @command_to_string(i64) #1

declare dso_local i8* @short_commit_name(%struct.TYPE_4__*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
