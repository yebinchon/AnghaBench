; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i64 }
%struct.tl_list_entry_set = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_entry_set = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@TL_LIST_FLAG_OBJECT_ID = common dso_local global i32 0, align 4
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"entry must contain object id (mode = 0x%08x)\00", align 1
@TL_LIST_FLAG_DATE = common dso_local global i32 0, align 4
@TL_LIST_FLAG_GLOBAL_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"entry can not contain date and global_id (mode = 0x%08x)\00", align 1
@TL_LIST_FLAG_FLAGS = common dso_local global i32 0, align 4
@TL_LIST_FLAG_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"64-bit value can not be used in this version of lists (value = %lld)\00", align 1
@TL_LIST_FLAG_TEXT = common dso_local global i32 0, align 4
@max_text_len = common dso_local global i64 0, align 8
@TL_LIST_FLAG_IP = common dso_local global i32 0, align 4
@TL_LIST_FLAG_FRONT_IP = common dso_local global i32 0, align 4
@TL_LIST_FLAG_PORT = common dso_local global i32 0, align 4
@TL_LIST_FLAG_UA_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_set(i32 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_act_extra*, align 8
  %5 = alloca %struct.tl_list_entry_set*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* @tl_do_list_entry_set, align 4
  %8 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %6, i32 72, i32 %7)
  store %struct.tl_act_extra* %8, %struct.tl_act_extra** %4, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %10 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.tl_list_entry_set*
  store %struct.tl_list_entry_set* %13, %struct.tl_list_entry_set** %5, align 8
  %14 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %15 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %16 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %15, i32 0, i32 11
  %17 = call i64 @fetch_list_id(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

20:                                               ; preds = %1
  %21 = call i8* (...) @tl_fetch_int()
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %24 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i64 (...) @tl_fetch_error()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

28:                                               ; preds = %20
  %29 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %30 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TL_LIST_FLAG_OBJECT_ID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %37 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %38 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, i32, ...) @tl_fetch_set_error_format(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

41:                                               ; preds = %28
  %42 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %43 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TL_LIST_FLAG_DATE, align 4
  %46 = load i32, i32* @TL_LIST_FLAG_GLOBAL_ID, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %52 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %53 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, i32, ...) @tl_fetch_set_error_format(i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

56:                                               ; preds = %41
  %57 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %58 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %57, i32 0, i32 10
  %59 = call i64 @fetch_object_id(i32* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

62:                                               ; preds = %56
  %63 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %64 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TL_LIST_FLAG_FLAGS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i8* (...) @tl_fetch_int()
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ null, %71 ]
  %74 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %75 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  %76 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %77 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TL_LIST_FLAG_VALUE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 (...) @tl_fetch_long()
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %88 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %90 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %93 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %98 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %99 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, i32, ...) @tl_fetch_set_error_format(i32 %97, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

102:                                              ; preds = %85
  %103 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %104 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TL_LIST_FLAG_TEXT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %111 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @max_text_len, align 8
  %114 = sub nsw i64 %113, 1
  %115 = call i32 @tl_fetch_string0(i32 %112, i64 %114)
  br label %117

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %109
  %118 = phi i32 [ %115, %109 ], [ -1, %116 ]
  %119 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %120 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %122 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  %125 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %126 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %130 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TL_LIST_FLAG_IP, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %117
  %136 = call i8* (...) @tl_fetch_int()
  br label %138

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i8* [ %136, %135 ], [ null, %137 ]
  %140 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %141 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %140, i32 0, i32 7
  store i8* %139, i8** %141, align 8
  %142 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %143 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @TL_LIST_FLAG_FRONT_IP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = call i8* (...) @tl_fetch_int()
  br label %151

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i8* [ %149, %148 ], [ null, %150 ]
  %153 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %154 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %153, i32 0, i32 6
  store i8* %152, i8** %154, align 8
  %155 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %156 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @TL_LIST_FLAG_PORT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = call i8* (...) @tl_fetch_int()
  br label %164

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i8* [ %162, %161 ], [ null, %163 ]
  %166 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %167 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %169 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TL_LIST_FLAG_UA_HASH, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = call i8* (...) @tl_fetch_int()
  br label %177

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i8* [ %175, %174 ], [ null, %176 ]
  %179 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %180 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %5, align 8
  %183 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = call i32 (...) @tl_fetch_end()
  %185 = call i64 (...) @tl_fetch_error()
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %190

188:                                              ; preds = %177
  %189 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  store %struct.tl_act_extra* %189, %struct.tl_act_extra** %2, align 8
  br label %190

190:                                              ; preds = %188, %187, %96, %61, %50, %35, %27, %19
  %191 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %191
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i8* @tl_fetch_int(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, ...) #1

declare dso_local i64 @fetch_object_id(i32*) #1

declare dso_local i32 @tl_fetch_long(...) #1

declare dso_local i32 @tl_fetch_string0(i32, i64) #1

declare dso_local i32 @tl_fetch_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
