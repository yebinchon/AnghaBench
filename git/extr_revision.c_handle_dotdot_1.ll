; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_dotdot_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_dotdot_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32 }
%struct.object_context = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32, i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@GET_OID_COMMITTISH = common dso_local global i32 0, align 4
@GET_OID_RECORD_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REV_CMD_MERGE_BASE = common dso_local global i32 0, align 4
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@REV_CMD_LEFT = common dso_local global i32 0, align 4
@REV_CMD_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.rev_info*, i32, i32, %struct.object_context*, %struct.object_context*)* @handle_dotdot_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_dotdot_1(i8* %0, i8* %1, %struct.rev_info* %2, i32 %3, i32 %4, %struct.object_context* %5, %struct.object_context* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rev_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_context*, align 8
  %15 = alloca %struct.object_context*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.object_id, align 4
  %19 = alloca %struct.object_id, align 4
  %20 = alloca %struct.object*, align 8
  %21 = alloca %struct.object*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.commit*, align 8
  %28 = alloca %struct.commit*, align 8
  %29 = alloca %struct.commit_list*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.rev_info* %2, %struct.rev_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.object_context* %5, %struct.object_context** %14, align 8
  store %struct.object_context* %6, %struct.object_context** %15, align 8
  store i32 0, i32* %24, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @UNINTERESTING, align 4
  %32 = load i32, i32* @BOTTOM, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %30, %33
  store i32 %34, i32* %25, align 4
  %35 = load i32, i32* @GET_OID_COMMITTISH, align 4
  %36 = load i32, i32* @GET_OID_RECORD_PATH, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %26, align 4
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %7
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %43

43:                                               ; preds = %42, %7
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  store i32 1, i32* %24, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %17, align 8
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i8*, i8** %17, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %60 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %26, align 4
  %64 = load %struct.object_context*, %struct.object_context** %14, align 8
  %65 = call i64 @get_oid_with_context(i32 %61, i8* %62, i32 %63, %struct.object_id* %18, %struct.object_context* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* %26, align 4
  %73 = load %struct.object_context*, %struct.object_context** %15, align 8
  %74 = call i64 @get_oid_with_context(i32 %70, i8* %71, i32 %72, %struct.object_id* %19, %struct.object_context* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67, %58
  store i32 -1, i32* %8, align 4
  br label %200

77:                                               ; preds = %67
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %10, align 8
  store i8 46, i8* %81, align 1
  %82 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %83 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @verify_non_filename(i32 %84, i8* %85)
  %87 = load i8*, i8** %10, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.object* @parse_object(i32 %91, %struct.object_id* %18)
  store %struct.object* %92, %struct.object** %20, align 8
  %93 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %94 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.object* @parse_object(i32 %95, %struct.object_id* %19)
  store %struct.object* %96, %struct.object** %21, align 8
  %97 = load %struct.object*, %struct.object** %20, align 8
  %98 = icmp ne %struct.object* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.object*, %struct.object** %21, align 8
  %101 = icmp ne %struct.object* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %99, %88
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %106 = load i32, i32* %24, align 4
  %107 = call i32 @dotdot_missing(i8* %103, i8* %104, %struct.rev_info* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  br label %200

108:                                              ; preds = %99
  %109 = load i32, i32* %24, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %25, align 4
  store i32 %113, i32* %22, align 4
  br label %157

114:                                              ; preds = %108
  %115 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %116 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.object*, %struct.object** %20, align 8
  %119 = getelementptr inbounds %struct.object, %struct.object* %118, i32 0, i32 1
  %120 = call %struct.commit* @lookup_commit_reference(i32 %117, i32* %119)
  store %struct.commit* %120, %struct.commit** %27, align 8
  %121 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %122 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.object*, %struct.object** %21, align 8
  %125 = getelementptr inbounds %struct.object, %struct.object* %124, i32 0, i32 1
  %126 = call %struct.commit* @lookup_commit_reference(i32 %123, i32* %125)
  store %struct.commit* %126, %struct.commit** %28, align 8
  %127 = load %struct.commit*, %struct.commit** %27, align 8
  %128 = icmp ne %struct.commit* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load %struct.commit*, %struct.commit** %28, align 8
  %131 = icmp ne %struct.commit* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %114
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %136 = load i32, i32* %24, align 4
  %137 = call i32 @dotdot_missing(i8* %133, i8* %134, %struct.rev_info* %135, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %200

138:                                              ; preds = %129
  %139 = load %struct.commit*, %struct.commit** %27, align 8
  %140 = load %struct.commit*, %struct.commit** %28, align 8
  %141 = call %struct.commit_list* @get_merge_bases(%struct.commit* %139, %struct.commit* %140)
  store %struct.commit_list* %141, %struct.commit_list** %29, align 8
  %142 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %143 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  %144 = load i32, i32* @REV_CMD_MERGE_BASE, align 4
  %145 = load i32, i32* %25, align 4
  %146 = call i32 @add_rev_cmdline_list(%struct.rev_info* %142, %struct.commit_list* %143, i32 %144, i32 %145)
  %147 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %148 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  %149 = load i32, i32* %25, align 4
  %150 = call i32 @add_pending_commit_list(%struct.rev_info* %147, %struct.commit_list* %148, i32 %149)
  %151 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  %152 = call i32 @free_commit_list(%struct.commit_list* %151)
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %22, align 4
  br label %157

157:                                              ; preds = %138, %111
  %158 = load i32, i32* %22, align 4
  %159 = load %struct.object*, %struct.object** %20, align 8
  %160 = getelementptr inbounds %struct.object, %struct.object* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %23, align 4
  %164 = load %struct.object*, %struct.object** %21, align 8
  %165 = getelementptr inbounds %struct.object, %struct.object* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %169 = load %struct.object*, %struct.object** %20, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = load i32, i32* @REV_CMD_LEFT, align 4
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @add_rev_cmdline(%struct.rev_info* %168, %struct.object* %169, i8* %170, i32 %171, i32 %172)
  %174 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %175 = load %struct.object*, %struct.object** %21, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i32, i32* @REV_CMD_RIGHT, align 4
  %178 = load i32, i32* %23, align 4
  %179 = call i32 @add_rev_cmdline(%struct.rev_info* %174, %struct.object* %175, i8* %176, i32 %177, i32 %178)
  %180 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %181 = load %struct.object*, %struct.object** %20, align 8
  %182 = load i8*, i8** %16, align 8
  %183 = load %struct.object_context*, %struct.object_context** %14, align 8
  %184 = getelementptr inbounds %struct.object_context, %struct.object_context* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.object_context*, %struct.object_context** %14, align 8
  %187 = getelementptr inbounds %struct.object_context, %struct.object_context* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @add_pending_object_with_path(%struct.rev_info* %180, %struct.object* %181, i8* %182, i32 %185, i32 %188)
  %190 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  %191 = load %struct.object*, %struct.object** %21, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = load %struct.object_context*, %struct.object_context** %15, align 8
  %194 = getelementptr inbounds %struct.object_context, %struct.object_context* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.object_context*, %struct.object_context** %15, align 8
  %197 = getelementptr inbounds %struct.object_context, %struct.object_context* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @add_pending_object_with_path(%struct.rev_info* %190, %struct.object* %191, i8* %192, i32 %195, i32 %198)
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %157, %132, %102, %76
  %201 = load i32, i32* %8, align 4
  ret i32 %201
}

declare dso_local i64 @get_oid_with_context(i32, i8*, i32, %struct.object_id*, %struct.object_context*) #1

declare dso_local i32 @verify_non_filename(i32, i8*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @dotdot_missing(i8*, i8*, %struct.rev_info*, i32) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, i32*) #1

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i32 @add_rev_cmdline_list(%struct.rev_info*, %struct.commit_list*, i32, i32) #1

declare dso_local i32 @add_pending_commit_list(%struct.rev_info*, %struct.commit_list*, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @add_rev_cmdline(%struct.rev_info*, %struct.object*, i8*, i32, i32) #1

declare dso_local i32 @add_pending_object_with_path(%struct.rev_info*, %struct.object*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
