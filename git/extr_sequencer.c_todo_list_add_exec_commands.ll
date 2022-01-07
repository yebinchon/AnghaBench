; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_add_exec_commands.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_add_exec_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { i32, i32, %struct.todo_item*, %struct.strbuf }
%struct.todo_item = type { i32, i64, i64, i64 }
%struct.strbuf = type { i64 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@TODO_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"exec \00", align 1
@TODO_PICK = common dso_local global i32 0, align 4
@TODO_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @todo_list_add_exec_commands(%struct.todo_list* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.todo_list*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.todo_item*, align 8
  %12 = alloca %struct.todo_item*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.todo_list* %0, %struct.todo_list** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %15 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %16 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %15, i32 0, i32 3
  store %struct.strbuf* %16, %struct.strbuf** %5, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.todo_item* null, %struct.todo_item** %11, align 8
  store %struct.todo_item* null, %struct.todo_item** %12, align 8
  %20 = load %struct.string_list*, %struct.string_list** %4, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.todo_item* @xcalloc(i32 %22, i32 32)
  store %struct.todo_item* %23, %struct.todo_item** %12, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %84, %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.string_list*, %struct.string_list** %4, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %87

30:                                               ; preds = %24
  %31 = load %struct.string_list*, %struct.string_list** %4, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %13, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %41 = load %struct.string_list*, %struct.string_list** %4, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strbuf_addstr(%struct.strbuf* %40, i8* %48)
  %50 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %51 = call i32 @strbuf_addch(%struct.strbuf* %50, i8 signext 10)
  %52 = load i32, i32* @TODO_EXEC, align 4
  %53 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %53, i64 %55
  %57 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %59, i64 %61
  %63 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %62, i32 0, i32 1
  store i64 %58, i64* %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %66 = add i64 %64, %65
  %67 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %67, i64 %69
  %71 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %70, i32 0, i32 2
  store i64 %66, i64* %71, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %74 = sub i64 %72, %73
  %75 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %75, i64 %77
  %79 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %78, i32 0, i32 3
  store i64 %74, i64* %79, align 8
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %30
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %24

87:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %160, %87
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %91 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %163

94:                                               ; preds = %88
  %95 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %96 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %95, i32 0, i32 2
  %97 = load %struct.todo_item*, %struct.todo_item** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %97, i64 %99
  %101 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %94
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @is_fixup(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %105
  %110 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.string_list*, %struct.string_list** %4, align 8
  %113 = getelementptr inbounds %struct.string_list, %struct.string_list* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ALLOC_GROW(%struct.todo_item* %110, i32 %115, i32 %116)
  %118 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %118, i64 %120
  %122 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %123 = load %struct.string_list*, %struct.string_list** %4, align 8
  %124 = getelementptr inbounds %struct.string_list, %struct.string_list* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @COPY_ARRAY(%struct.todo_item* %121, %struct.todo_item* %122, i32 %125)
  %127 = load %struct.string_list*, %struct.string_list** %4, align 8
  %128 = getelementptr inbounds %struct.string_list, %struct.string_list* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %109, %105, %94
  %133 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @ALLOC_GROW(%struct.todo_item* %133, i32 %135, i32 %136)
  %138 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %138, i64 %141
  %143 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %144 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %143, i32 0, i32 2
  %145 = load %struct.todo_item*, %struct.todo_item** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %145, i64 %147
  %149 = bitcast %struct.todo_item* %142 to i8*
  %150 = bitcast %struct.todo_item* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 32, i1 false)
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @TODO_PICK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %132
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @TODO_MERGE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %132
  store i32 1, i32* %8, align 4
  br label %159

159:                                              ; preds = %158, %154
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %88

163:                                              ; preds = %88
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %169 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %166, %163
  %173 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.string_list*, %struct.string_list** %4, align 8
  %176 = getelementptr inbounds %struct.string_list, %struct.string_list* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @ALLOC_GROW(%struct.todo_item* %173, i32 %178, i32 %179)
  %181 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %181, i64 %183
  %185 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %186 = load %struct.string_list*, %struct.string_list** %4, align 8
  %187 = getelementptr inbounds %struct.string_list, %struct.string_list* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @COPY_ARRAY(%struct.todo_item* %184, %struct.todo_item* %185, i32 %188)
  %190 = load %struct.string_list*, %struct.string_list** %4, align 8
  %191 = getelementptr inbounds %struct.string_list, %struct.string_list* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %172, %166
  %196 = load %struct.todo_item*, %struct.todo_item** %12, align 8
  %197 = call i32 @free(%struct.todo_item* %196)
  %198 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %199 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %198, i32 0, i32 2
  %200 = load %struct.todo_item*, %struct.todo_item** %199, align 8
  %201 = call i32 @FREE_AND_NULL(%struct.todo_item* %200)
  %202 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %203 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %204 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %203, i32 0, i32 2
  store %struct.todo_item* %202, %struct.todo_item** %204, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %207 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %210 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  ret void
}

declare dso_local %struct.todo_item* @xcalloc(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @is_fixup(i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.todo_item*, i32, i32) #1

declare dso_local i32 @COPY_ARRAY(%struct.todo_item*, %struct.todo_item*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.todo_item*) #1

declare dso_local i32 @FREE_AND_NULL(%struct.todo_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
