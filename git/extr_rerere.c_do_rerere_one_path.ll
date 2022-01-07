; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_do_rerere_one_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_do_rerere_one_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.string_list_item = type { i8*, %struct.rerere_id* }
%struct.rerere_id = type { i32, %struct.rerere_dir* }
%struct.rerere_dir = type { i32*, i32 }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"postimage\00", align 1
@RR_HAS_POSTIMAGE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Recorded resolution for '%s'.\00", align 1
@RR_HAS_PREIMAGE = common dso_local global i32 0, align 4
@rerere_autoupdate = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Resolved '%s' using previous resolution.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"preimage\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot unlink stray '%s'\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Recorded preimage for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.string_list_item*, %struct.string_list*)* @do_rerere_one_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rerere_one_path(%struct.index_state* %0, %struct.string_list_item* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.string_list_item*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rerere_id*, align 8
  %9 = alloca %struct.rerere_dir*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rerere_id, align 8
  %13 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.string_list_item* %1, %struct.string_list_item** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %18 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %17, i32 0, i32 1
  %19 = load %struct.rerere_id*, %struct.rerere_id** %18, align 8
  store %struct.rerere_id* %19, %struct.rerere_id** %8, align 8
  %20 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %21 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %20, i32 0, i32 1
  %22 = load %struct.rerere_dir*, %struct.rerere_dir** %21, align 8
  store %struct.rerere_dir* %22, %struct.rerere_dir** %9, align 8
  %23 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %24 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %3
  %29 = load %struct.index_state*, %struct.index_state** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @handle_file(%struct.index_state* %29, i8* %30, i32* null, i8* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %28
  %34 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %35 = call i8* @rerere_path(%struct.rerere_id* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @copy_file(i8* %35, i8* %36, i32 438)
  %38 = load i32, i32* @RR_HAS_POSTIMAGE, align 4
  %39 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %40 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %39, i32 0, i32 1
  %41 = load %struct.rerere_dir*, %struct.rerere_dir** %40, align 8
  %42 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %38
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @fprintf_ln(i32 %49, i32 %50, i8* %51)
  %53 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %54 = call i32 @free_rerere_id(%struct.string_list_item* %53)
  %55 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %56 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %55, i32 0, i32 1
  store %struct.rerere_id* null, %struct.rerere_id** %56, align 8
  br label %188

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %3
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %123, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.rerere_dir*, %struct.rerere_dir** %9, align 8
  %62 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %126

65:                                               ; preds = %59
  %66 = load i32, i32* @RR_HAS_PREIMAGE, align 4
  %67 = load i32, i32* @RR_HAS_POSTIMAGE, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %70 = bitcast %struct.rerere_id* %12 to i8*
  %71 = bitcast %struct.rerere_id* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.rerere_dir*, %struct.rerere_dir** %9, align 8
  %73 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %123

84:                                               ; preds = %65
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %12, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.index_state*, %struct.index_state** %4, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i64 @merge(%struct.index_state* %87, %struct.rerere_id* %12, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %123

92:                                               ; preds = %84
  %93 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %94 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 0, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %99 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %105 = call i32 @remove_variant(%struct.rerere_id* %104)
  br label %106

106:                                              ; preds = %103, %97, %92
  %107 = load i64, i64* @rerere_autoupdate, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.string_list*, %struct.string_list** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @string_list_insert(%struct.string_list* %110, i8* %111)
  br label %118

113:                                              ; preds = %106
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @fprintf_ln(i32 %114, i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %113, %109
  %119 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %120 = call i32 @free_rerere_id(%struct.string_list_item* %119)
  %121 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %122 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %121, i32 0, i32 1
  store %struct.rerere_id* null, %struct.rerere_id** %122, align 8
  br label %188

123:                                              ; preds = %91, %83
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %59

126:                                              ; preds = %59
  %127 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %128 = call i32 @assign_variant(%struct.rerere_id* %127)
  %129 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %130 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %10, align 4
  %132 = load %struct.index_state*, %struct.index_state** %4, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %135 = call i8* @rerere_path(%struct.rerere_id* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %136 = call i32 @handle_file(%struct.index_state* %132, i8* %133, i32* null, i8* %135)
  %137 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %138 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %137, i32 0, i32 1
  %139 = load %struct.rerere_dir*, %struct.rerere_dir** %138, align 8
  %140 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RR_HAS_POSTIMAGE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %126
  %150 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %151 = call i8* @rerere_path(%struct.rerere_id* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %151, i8** %13, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = call i64 @unlink(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @die_errno(i32 %156, i8* %157)
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32, i32* @RR_HAS_POSTIMAGE, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %163 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %162, i32 0, i32 1
  %164 = load %struct.rerere_dir*, %struct.rerere_dir** %163, align 8
  %165 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %161
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %159, %126
  %173 = load i32, i32* @RR_HAS_PREIMAGE, align 4
  %174 = load %struct.rerere_id*, %struct.rerere_id** %8, align 8
  %175 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %174, i32 0, i32 1
  %176 = load %struct.rerere_dir*, %struct.rerere_dir** %175, align 8
  %177 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %173
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 @fprintf_ln(i32 %184, i32 %185, i8* %186)
  br label %188

188:                                              ; preds = %172, %118, %33
  ret void
}

declare dso_local i32 @handle_file(%struct.index_state*, i8*, i32*, i8*) #1

declare dso_local i32 @copy_file(i8*, i8*, i32) #1

declare dso_local i8* @rerere_path(%struct.rerere_id*, i8*) #1

declare dso_local i32 @fprintf_ln(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free_rerere_id(%struct.string_list_item*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @merge(%struct.index_state*, %struct.rerere_id*, i8*) #1

declare dso_local i32 @remove_variant(%struct.rerere_id*) #1

declare dso_local i32 @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i32 @assign_variant(%struct.rerere_id*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
