; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_entry_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_entry_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_flags = type { i32, i32, i32 }
%struct.lev_set_flags_long = type { i32, i32, i32 }
%struct.lev_change_flags_long = type { i32, i32, i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_SET_FLAGS = common dso_local global i64 0, align 8
@lev_list_object_bytes = common dso_local global i64 0, align 8
@LEV_LI_SET_FLAGS_LONG = common dso_local global i64 0, align 8
@LEV_LI_CHANGE_FLAGS_LONG = common dso_local global i64 0, align 8
@LEV_LI_DECR_FLAGS = common dso_local global i64 0, align 8
@LEV_LI_INCR_FLAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_entry_flags(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_set_flags*, align 8
  %12 = alloca %struct.lev_set_flags_long*, align 8
  %13 = alloca %struct.lev_change_flags_long*, align 8
  %14 = alloca %struct.lev_change_flags_long*, align 8
  %15 = alloca %struct.lev_set_flags*, align 8
  %16 = alloca %struct.lev_set_flags*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @conv_list_id(i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %168

21:                                               ; preds = %4
  %22 = load i64, i64* @metafile_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @prepare_list_metafile(i32 %25, i32 1)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -2, i32* %5, align 4
  br label %168

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -256
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @LEV_LI_SET_FLAGS, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i64, i64* @lev_list_object_bytes, align 8
  %44 = add i64 12, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @FIRST_INT(i32 %45)
  %47 = call %struct.lev_set_flags_long* @alloc_log_event(i64 %42, i64 %44, i32 %46)
  %48 = bitcast %struct.lev_set_flags_long* %47 to %struct.lev_set_flags*
  store %struct.lev_set_flags* %48, %struct.lev_set_flags** %11, align 8
  %49 = load %struct.lev_set_flags*, %struct.lev_set_flags** %11, align 8
  %50 = bitcast %struct.lev_set_flags* %49 to %struct.lev_set_flags_long*
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @upcopy_list_object_id(%struct.lev_set_flags_long* %50, i32 %51, i32 %52)
  %54 = load %struct.lev_set_flags*, %struct.lev_set_flags** %11, align 8
  %55 = bitcast %struct.lev_set_flags* %54 to %struct.lev_set_flags_long*
  %56 = call i32 @set_entry_flags(%struct.lev_set_flags_long* %55)
  store i32 %56, i32* %5, align 4
  br label %168

57:                                               ; preds = %34, %29
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, -256
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, -256
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %119

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load i64, i64* @LEV_LI_SET_FLAGS_LONG, align 8
  %72 = load i64, i64* @lev_list_object_bytes, align 8
  %73 = add i64 12, %72
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @FIRST_INT(i32 %74)
  %76 = call %struct.lev_set_flags_long* @alloc_log_event(i64 %71, i64 %73, i32 %75)
  store %struct.lev_set_flags_long* %76, %struct.lev_set_flags_long** %12, align 8
  %77 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %12, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @upcopy_list_object_id(%struct.lev_set_flags_long* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %12, align 8
  %83 = call %struct.lev_set_flags_long* @LEV_ADJUST_LO(%struct.lev_set_flags_long* %82)
  %84 = getelementptr inbounds %struct.lev_set_flags_long, %struct.lev_set_flags_long* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %struct.lev_set_flags_long*, %struct.lev_set_flags_long** %12, align 8
  %86 = bitcast %struct.lev_set_flags_long* %85 to %struct.lev_set_flags*
  %87 = bitcast %struct.lev_set_flags* %86 to %struct.lev_set_flags_long*
  %88 = call i32 @set_entry_flags(%struct.lev_set_flags_long* %87)
  store i32 %88, i32* %5, align 4
  br label %168

89:                                               ; preds = %65
  %90 = load i64, i64* @LEV_LI_CHANGE_FLAGS_LONG, align 8
  %91 = load i64, i64* @lev_list_object_bytes, align 8
  %92 = add i64 12, %91
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @FIRST_INT(i32 %93)
  %95 = call %struct.lev_set_flags_long* @alloc_log_event(i64 %90, i64 %92, i32 %94)
  %96 = bitcast %struct.lev_set_flags_long* %95 to %struct.lev_change_flags_long*
  store %struct.lev_change_flags_long* %96, %struct.lev_change_flags_long** %13, align 8
  %97 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %13, align 8
  %98 = bitcast %struct.lev_change_flags_long* %97 to %struct.lev_set_flags_long*
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @upcopy_list_object_id(%struct.lev_set_flags_long* %98, i32 %99, i32 %100)
  %102 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %13, align 8
  %103 = bitcast %struct.lev_change_flags_long* %102 to %struct.lev_set_flags_long*
  %104 = call %struct.lev_set_flags_long* @LEV_ADJUST_LO(%struct.lev_set_flags_long* %103)
  %105 = bitcast %struct.lev_set_flags_long* %104 to %struct.lev_change_flags_long*
  store %struct.lev_change_flags_long* %105, %struct.lev_change_flags_long** %14, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %14, align 8
  %111 = getelementptr inbounds %struct.lev_change_flags_long, %struct.lev_change_flags_long* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %14, align 8
  %114 = getelementptr inbounds %struct.lev_change_flags_long, %struct.lev_change_flags_long* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.lev_change_flags_long*, %struct.lev_change_flags_long** %13, align 8
  %116 = bitcast %struct.lev_change_flags_long* %115 to %struct.lev_set_flags*
  %117 = bitcast %struct.lev_set_flags* %116 to %struct.lev_set_flags_long*
  %118 = call i32 @set_entry_flags(%struct.lev_set_flags_long* %117)
  store i32 %118, i32* %5, align 4
  br label %168

119:                                              ; preds = %61
  %120 = load i32, i32* %8, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load i64, i64* @LEV_LI_DECR_FLAGS, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = load i64, i64* @lev_list_object_bytes, align 8
  %131 = add i64 12, %130
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @FIRST_INT(i32 %132)
  %134 = call %struct.lev_set_flags_long* @alloc_log_event(i64 %129, i64 %131, i32 %133)
  %135 = bitcast %struct.lev_set_flags_long* %134 to %struct.lev_set_flags*
  store %struct.lev_set_flags* %135, %struct.lev_set_flags** %15, align 8
  %136 = load %struct.lev_set_flags*, %struct.lev_set_flags** %15, align 8
  %137 = bitcast %struct.lev_set_flags* %136 to %struct.lev_set_flags_long*
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @upcopy_list_object_id(%struct.lev_set_flags_long* %137, i32 %138, i32 %139)
  %141 = load %struct.lev_set_flags*, %struct.lev_set_flags** %15, align 8
  %142 = bitcast %struct.lev_set_flags* %141 to %struct.lev_set_flags_long*
  %143 = call i32 @set_entry_flags(%struct.lev_set_flags_long* %142)
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %125, %119
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %144
  %148 = load i64, i64* @LEV_LI_INCR_FLAGS, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %148, %150
  %152 = load i64, i64* @lev_list_object_bytes, align 8
  %153 = add i64 12, %152
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @FIRST_INT(i32 %154)
  %156 = call %struct.lev_set_flags_long* @alloc_log_event(i64 %151, i64 %153, i32 %155)
  %157 = bitcast %struct.lev_set_flags_long* %156 to %struct.lev_set_flags*
  store %struct.lev_set_flags* %157, %struct.lev_set_flags** %16, align 8
  %158 = load %struct.lev_set_flags*, %struct.lev_set_flags** %16, align 8
  %159 = bitcast %struct.lev_set_flags* %158 to %struct.lev_set_flags_long*
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @upcopy_list_object_id(%struct.lev_set_flags_long* %159, i32 %160, i32 %161)
  %163 = load %struct.lev_set_flags*, %struct.lev_set_flags** %16, align 8
  %164 = bitcast %struct.lev_set_flags* %163 to %struct.lev_set_flags_long*
  %165 = call i32 @set_entry_flags(%struct.lev_set_flags_long* %164)
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %147, %144
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %89, %70, %38, %28, %20
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.lev_set_flags_long* @alloc_log_event(i64, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_set_flags_long*, i32, i32) #1

declare dso_local i32 @set_entry_flags(%struct.lev_set_flags_long*) #1

declare dso_local %struct.lev_set_flags_long* @LEV_ADJUST_LO(%struct.lev_set_flags_long*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
