; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_process_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_process_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_context = type { i32, i32 (%struct.object*, i32*, i32)*, i32, %struct.rev_info* }
%struct.object = type { i32, i32 }
%struct.rev_info = type { i32, i32, i64, i64, i32 }
%struct.tree = type { %struct.object }
%struct.strbuf = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"bad tree object\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad tree object %s\00", align 1
@LOFS_BEGIN_TREE = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@LOFR_SKIP_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Skipping contents of tree %s...\0A\00", align 1
@LOFS_END_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traversal_context*, %struct.tree*, %struct.strbuf*, i8*)* @process_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_tree(%struct.traversal_context* %0, %struct.tree* %1, %struct.strbuf* %2, i8* %3) #0 {
  %5 = alloca %struct.traversal_context*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object*, align 8
  %10 = alloca %struct.rev_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.traversal_context* %0, %struct.traversal_context** %5, align 8
  store %struct.tree* %1, %struct.tree** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.tree*, %struct.tree** %6, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 0
  store %struct.object* %15, %struct.object** %9, align 8
  %16 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %17 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %16, i32 0, i32 3
  %18 = load %struct.rev_info*, %struct.rev_info** %17, align 8
  store %struct.rev_info* %18, %struct.rev_info** %10, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %207

27:                                               ; preds = %4
  %28 = load %struct.object*, %struct.object** %9, align 8
  %29 = icmp ne %struct.object* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.object*, %struct.object** %9, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UNINTERESTING, align 4
  %37 = load i32, i32* @SEEN, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %207

42:                                               ; preds = %32
  %43 = load %struct.tree*, %struct.tree** %6, align 8
  %44 = call i32 @parse_tree_gently(%struct.tree* %43, i32 1)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %207

53:                                               ; preds = %47
  %54 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.object*, %struct.object** %9, align 8
  %60 = getelementptr inbounds %struct.object, %struct.object* %59, i32 0, i32 1
  %61 = call i64 @is_promisor_object(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %207

64:                                               ; preds = %58, %53
  %65 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.object*, %struct.object** %9, align 8
  %71 = getelementptr inbounds %struct.object, %struct.object* %70, i32 0, i32 1
  %72 = call i32 @oid_to_hex(i32* %71)
  %73 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %42
  %76 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strbuf_addstr(%struct.strbuf* %76, i8* %77)
  %79 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %80 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %79, i32 0, i32 3
  %81 = load %struct.rev_info*, %struct.rev_info** %80, align 8
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LOFS_BEGIN_TREE, align 4
  %85 = load %struct.object*, %struct.object** %9, align 8
  %86 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %96 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @list_objects_filter__filter_object(i32 %83, i32 %84, %struct.object* %85, i32* %88, i32* %94, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %75
  %104 = load i32, i32* @SEEN, align 4
  %105 = load %struct.object*, %struct.object** %9, align 8
  %106 = getelementptr inbounds %struct.object, %struct.object* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %75
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @LOFR_DO_SHOW, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %116 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %115, i32 0, i32 1
  %117 = load i32 (%struct.object*, i32*, i32)*, i32 (%struct.object*, i32*, i32)** %116, align 8
  %118 = load %struct.object*, %struct.object** %9, align 8
  %119 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %123 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %117(%struct.object* %118, i32* %121, i32 %124)
  br label %126

126:                                              ; preds = %114, %109
  %127 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %133 = call i32 @strbuf_addch(%struct.strbuf* %132, i8 signext 47)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @LOFR_SKIP_TREE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %141 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @trace_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32* %142)
  br label %153

144:                                              ; preds = %134
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %149 = load %struct.tree*, %struct.tree** %6, align 8
  %150 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %151 = call i32 @process_tree_contents(%struct.traversal_context* %148, %struct.tree* %149, %struct.strbuf* %150)
  br label %152

152:                                              ; preds = %147, %144
  br label %153

153:                                              ; preds = %152, %139
  %154 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %155 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %154, i32 0, i32 3
  %156 = load %struct.rev_info*, %struct.rev_info** %155, align 8
  %157 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @LOFS_END_TREE, align 4
  %160 = load %struct.object*, %struct.object** %9, align 8
  %161 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %162 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %165 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %171 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @list_objects_filter__filter_object(i32 %158, i32 %159, %struct.object* %160, i32* %163, i32* %169, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %153
  %179 = load i32, i32* @SEEN, align 4
  %180 = load %struct.object*, %struct.object** %9, align 8
  %181 = getelementptr inbounds %struct.object, %struct.object* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %153
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @LOFR_DO_SHOW, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %191 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %190, i32 0, i32 1
  %192 = load i32 (%struct.object*, i32*, i32)*, i32 (%struct.object*, i32*, i32)** %191, align 8
  %193 = load %struct.object*, %struct.object** %9, align 8
  %194 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %195 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %198 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 %192(%struct.object* %193, i32* %196, i32 %199)
  br label %201

201:                                              ; preds = %189, %184
  %202 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @strbuf_setlen(%struct.strbuf* %202, i32 %203)
  %205 = load %struct.tree*, %struct.tree** %6, align 8
  %206 = call i32 @free_tree_buffer(%struct.tree* %205)
  br label %207

207:                                              ; preds = %201, %63, %52, %41, %26
  ret void
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @parse_tree_gently(%struct.tree*, i32) #1

declare dso_local i64 @is_promisor_object(i32*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @list_objects_filter__filter_object(i32, i32, %struct.object*, i32*, i32*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @trace_printf(i8*, i32*) #1

declare dso_local i32 @process_tree_contents(%struct.traversal_context*, %struct.tree*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
