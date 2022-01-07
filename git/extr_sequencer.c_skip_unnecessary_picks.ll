; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_skip_unnecessary_picks.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_skip_unnecessary_picks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.todo_list = type { i32, i64, %struct.todo_item* }
%struct.todo_item = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@TODO_NOOP = common dso_local global i64 0, align 8
@TODO_PICK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"could not parse commit '%s'\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not write to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.todo_list*, %struct.object_id*)* @skip_unnecessary_picks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_unnecessary_picks(%struct.repository* %0, %struct.todo_list* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.todo_list*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.todo_item*, align 8
  %11 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.todo_list* %1, %struct.todo_list** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %94, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %15 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %97

18:                                               ; preds = %12
  %19 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %20 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %19, i32 0, i32 2
  %21 = load %struct.todo_item*, %struct.todo_item** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %21, i64 %23
  store %struct.todo_item* %24, %struct.todo_item** %10, align 8
  %25 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %26 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TODO_NOOP, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %94

31:                                               ; preds = %18
  %32 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %33 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TODO_PICK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %97

38:                                               ; preds = %31
  %39 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %40 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = call i64 @parse_commit(%struct.TYPE_10__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %47 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @oid_to_hex(i32* %50)
  %52 = call i32 @error(i32 %45, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %146

53:                                               ; preds = %38
  %54 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %55 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %97

61:                                               ; preds = %53
  %62 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %63 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %97

71:                                               ; preds = %61
  %72 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %73 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store %struct.object_id* %80, %struct.object_id** %8, align 8
  %81 = load %struct.object_id*, %struct.object_id** %8, align 8
  %82 = load %struct.object_id*, %struct.object_id** %7, align 8
  %83 = call i32 @oideq(%struct.object_id* %81, %struct.object_id* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %71
  br label %97

86:                                               ; preds = %71
  %87 = load %struct.object_id*, %struct.object_id** %7, align 8
  %88 = load %struct.todo_item*, %struct.todo_item** %10, align 8
  %89 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = call i32 @oidcpy(%struct.object_id* %87, i32* %92)
  br label %94

94:                                               ; preds = %86, %30
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %12

97:                                               ; preds = %85, %70, %60, %37, %12
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %145

100:                                              ; preds = %97
  %101 = call i8* (...) @rebase_path_done()
  store i8* %101, i8** %11, align 8
  %102 = load %struct.repository*, %struct.repository** %5, align 8
  %103 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @todo_list_write_to_file(%struct.repository* %102, %struct.todo_list* %103, i8* %104, i32* null, i32* null, i32 %105, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @error_errno(i32 %109, i8* %110)
  store i32 -1, i32* %4, align 4
  br label %146

112:                                              ; preds = %100
  %113 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %114 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %113, i32 0, i32 2
  %115 = load %struct.todo_item*, %struct.todo_item** %114, align 8
  %116 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %117 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %116, i32 0, i32 2
  %118 = load %struct.todo_item*, %struct.todo_item** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %118, i64 %120
  %122 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %123 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @MOVE_ARRAY(%struct.todo_item* %115, %struct.todo_item* %121, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %130 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %134 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %136 = call i32 @peek_command(%struct.todo_list* %135, i32 0)
  %137 = call i64 @is_fixup(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %112
  %140 = load %struct.object_id*, %struct.object_id** %7, align 8
  %141 = load %struct.todo_list*, %struct.todo_list** %6, align 8
  %142 = call i32 @peek_command(%struct.todo_list* %141, i32 0)
  %143 = call i32 @record_in_rewritten(%struct.object_id* %140, i32 %142)
  br label %144

144:                                              ; preds = %139, %112
  br label %145

145:                                              ; preds = %144, %97
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %108, %44
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @parse_commit(%struct.TYPE_10__*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i8* @rebase_path_done(...) #1

declare dso_local i64 @todo_list_write_to_file(%struct.repository*, %struct.todo_list*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @MOVE_ARRAY(%struct.todo_item*, %struct.todo_item*, i32) #1

declare dso_local i64 @is_fixup(i32) #1

declare dso_local i32 @peek_command(%struct.todo_list*, i32) #1

declare dso_local i32 @record_in_rewritten(%struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
