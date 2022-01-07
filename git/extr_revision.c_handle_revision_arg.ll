; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_revision_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_revision_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, i32, i32 }
%struct.object_context = type { i32, i32 }
%struct.object = type { i32 }
%struct.object_id = type { i32 }

@REVARG_CANNOT_BE_FILENAME = common dso_local global i32 0, align 4
@GET_OID_RECORD_PATH = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"^@\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^!\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"^-\00", align 1
@REVARG_COMMITTISH = common dso_local global i32 0, align 4
@GET_OID_COMMITTISH = common dso_local global i32 0, align 4
@REV_CMD_REV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_revision_arg(i8* %0, %struct.rev_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_context, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object*, align 8
  %13 = alloca %struct.object_id, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.rev_info* %1, %struct.rev_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %15, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @REVARG_CANNOT_BE_FILENAME, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @GET_OID_RECORD_PATH, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @UNINTERESTING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @BOTTOM, align 4
  %32 = or i32 %30, %31
  br label %38

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BOTTOM, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %32, %29 ], [ %37, %33 ]
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %217

47:                                               ; preds = %42, %38
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @handle_dotdot(i8* %48, %struct.rev_info* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %217

55:                                               ; preds = %47
  %56 = load i8*, i8** %15, align 8
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %11, align 8
  store i8 0, i8* %66, align 1
  %67 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @add_parents_only(%struct.rev_info* %67, i8* %68, i32 %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %217

73:                                               ; preds = %65
  %74 = load i8*, i8** %11, align 8
  store i8 94, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %60, %55
  %76 = load i8*, i8** %15, align 8
  %77 = call i8* @strstr(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %11, align 8
  store i8 0, i8* %86, align 1
  %87 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @UNINTERESTING, align 4
  %91 = load i32, i32* @BOTTOM, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %89, %92
  %94 = call i64 @add_parents_only(%struct.rev_info* %87, i8* %88, i32 %93, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  %97 = load i8*, i8** %11, align 8
  store i8 94, i8* %97, align 1
  br label %98

98:                                               ; preds = %96, %85
  br label %99

99:                                               ; preds = %98, %80, %75
  %100 = load i8*, i8** %15, align 8
  %101 = call i8* @strstr(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  store i32 1, i32* %18, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = call i32 @strtoul(i8* %111, i8** %19, i32 10)
  store i32 %112, i32* %18, align 4
  %113 = load i8*, i8** %19, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117, %109
  store i32 -1, i32* %5, align 4
  br label %217

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i8*, i8** %11, align 8
  store i8 0, i8* %123, align 1
  %124 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @UNINTERESTING, align 4
  %128 = load i32, i32* @BOTTOM, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %126, %129
  %131 = load i32, i32* %18, align 4
  %132 = call i64 @add_parents_only(%struct.rev_info* %124, i8* %125, i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %122
  %135 = load i8*, i8** %11, align 8
  store i8 94, i8* %135, align 1
  br label %136

136:                                              ; preds = %134, %122
  br label %137

137:                                              ; preds = %136, %99
  store i32 0, i32* %14, align 4
  %138 = load i8*, i8** %15, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 94
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @UNINTERESTING, align 4
  %144 = load i32, i32* @BOTTOM, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load i8*, i8** %15, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %15, align 8
  br label %148

148:                                              ; preds = %142, %137
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @REVARG_COMMITTISH, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @GET_OID_COMMITTISH, align 4
  %155 = load i32, i32* %17, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %153, %148
  %158 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %159 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %15, align 8
  %162 = load i32, i32* %17, align 4
  %163 = call i64 @get_oid_with_context(i32 %160, i8* %161, i32 %162, %struct.object_id* %13, %struct.object_context* %10)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %157
  %166 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %167 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 0, i32 -1
  store i32 %171, i32* %5, align 4
  br label %217

172:                                              ; preds = %157
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %177 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = call i32 @verify_non_filename(i32 %178, i8* %179)
  br label %181

181:                                              ; preds = %175, %172
  %182 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %14, align 4
  %186 = xor i32 %184, %185
  %187 = call %struct.object* @get_reference(%struct.rev_info* %182, i8* %183, %struct.object_id* %13, i32 %186)
  store %struct.object* %187, %struct.object** %12, align 8
  %188 = load %struct.object*, %struct.object** %12, align 8
  %189 = icmp ne %struct.object* %188, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %181
  %191 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %192 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 0, i32 -1
  store i32 %196, i32* %5, align 4
  br label %217

197:                                              ; preds = %181
  %198 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %199 = load %struct.object*, %struct.object** %12, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = load i32, i32* @REV_CMD_REV, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %14, align 4
  %204 = xor i32 %202, %203
  %205 = call i32 @add_rev_cmdline(%struct.rev_info* %198, %struct.object* %199, i8* %200, i32 %201, i32 %204)
  %206 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %207 = load %struct.object*, %struct.object** %12, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds %struct.object_context, %struct.object_context* %10, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.object_context, %struct.object_context* %10, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @add_pending_object_with_path(%struct.rev_info* %206, %struct.object* %207, i8* %208, i32 %210, i32 %212)
  %214 = getelementptr inbounds %struct.object_context, %struct.object_context* %10, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @free(i32 %215)
  store i32 0, i32* %5, align 4
  br label %217

217:                                              ; preds = %197, %190, %165, %120, %72, %54, %46
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @handle_dotdot(i8*, %struct.rev_info*, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @add_parents_only(%struct.rev_info*, i8*, i32, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @get_oid_with_context(i32, i8*, i32, %struct.object_id*, %struct.object_context*) #1

declare dso_local i32 @verify_non_filename(i32, i8*) #1

declare dso_local %struct.object* @get_reference(%struct.rev_info*, i8*, %struct.object_id*, i32) #1

declare dso_local i32 @add_rev_cmdline(%struct.rev_info*, %struct.object*, i8*, i32, i32) #1

declare dso_local i32 @add_pending_object_with_path(%struct.rev_info*, %struct.object*, i8*, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
