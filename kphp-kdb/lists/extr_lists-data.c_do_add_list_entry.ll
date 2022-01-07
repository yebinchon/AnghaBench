; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_add_list_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_add_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_new_entry_ext = type { i32, i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_SET_ENTRY_EXT = common dso_local global i32 0, align 4
@lev_list_object_bytes = common dso_local global i64 0, align 8
@LEV_LI_SET_ENTRY = common dso_local global i32 0, align 4
@LEV_LI_SET_ENTRY_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_list_entry(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.lev_new_entry_ext*, align 8
  %15 = alloca %struct.lev_new_entry_ext*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 3
  br label %22

22:                                               ; preds = %19, %6
  %23 = phi i1 [ false, %6 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @conv_list_id(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, -256
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22
  store i32 -1, i32* %7, align 4
  br label %153

34:                                               ; preds = %29
  %35 = load i64, i64* @metafile_mode, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @prepare_list_metafile(i32 %41, i32 1)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -2, i32* %7, align 4
  br label %153

45:                                               ; preds = %40, %37, %34
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32* null, i32** %13, align 8
  br label %69

69:                                               ; preds = %68, %63, %58, %53, %48, %45
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32* null, i32** %13, align 8
  br label %76

76:                                               ; preds = %75, %72, %69
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @entry_exists(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %153

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @entry_exists(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %7, align 4
  br label %153

98:                                               ; preds = %92, %89
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %127

101:                                              ; preds = %98
  %102 = load i32, i32* @LEV_LI_SET_ENTRY_EXT, align 4
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 %103, 8
  %105 = sub nsw i32 %102, %104
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i64, i64* @lev_list_object_bytes, align 8
  %109 = add i64 8, %108
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @FIRST_INT(i32 %110)
  %112 = call %struct.lev_new_entry_ext* @alloc_log_event(i32 %107, i64 %109, i32 %111)
  store %struct.lev_new_entry_ext* %112, %struct.lev_new_entry_ext** %14, align 8
  %113 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %14, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @upcopy_list_object_id(%struct.lev_new_entry_ext* %113, i32 %114, i32 %115)
  %117 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %14, align 8
  %118 = call %struct.lev_new_entry_ext* @LEV_ADJUST_LO(%struct.lev_new_entry_ext* %117)
  store %struct.lev_new_entry_ext* %118, %struct.lev_new_entry_ext** %15, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %15, align 8
  %121 = getelementptr inbounds %struct.lev_new_entry_ext, %struct.lev_new_entry_ext* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %15, align 8
  %123 = getelementptr inbounds %struct.lev_new_entry_ext, %struct.lev_new_entry_ext* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @memcpy(i32 %124, i32* %125, i32 16)
  store i32 0, i32* %16, align 4
  br label %148

127:                                              ; preds = %98
  %128 = load i32, i32* @LEV_LI_SET_ENTRY, align 4
  %129 = load i32, i32* %10, align 4
  %130 = shl i32 %129, 8
  %131 = sub nsw i32 %128, %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i64, i64* @lev_list_object_bytes, align 8
  %135 = add i64 4, %134
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @FIRST_INT(i32 %136)
  %138 = call %struct.lev_new_entry_ext* @alloc_log_event(i32 %133, i64 %135, i32 %137)
  store %struct.lev_new_entry_ext* %138, %struct.lev_new_entry_ext** %14, align 8
  %139 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %14, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @upcopy_list_object_id(%struct.lev_new_entry_ext* %139, i32 %140, i32 %141)
  %143 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %14, align 8
  %144 = call %struct.lev_new_entry_ext* @LEV_ADJUST_LO(%struct.lev_new_entry_ext* %143)
  store %struct.lev_new_entry_ext* %144, %struct.lev_new_entry_ext** %15, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %15, align 8
  %147 = getelementptr inbounds %struct.lev_new_entry_ext, %struct.lev_new_entry_ext* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  store i32 1, i32* %16, align 4
  br label %148

148:                                              ; preds = %127, %101
  %149 = load %struct.lev_new_entry_ext*, %struct.lev_new_entry_ext** %14, align 8
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @set_list_entry(%struct.lev_new_entry_ext* %149, i32 %150, i32 %151)
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %148, %97, %88, %44, %33
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i64 @entry_exists(i32, i32) #1

declare dso_local %struct.lev_new_entry_ext* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_new_entry_ext*, i32, i32) #1

declare dso_local %struct.lev_new_entry_ext* @LEV_ADJUST_LO(%struct.lev_new_entry_ext*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @set_list_entry(%struct.lev_new_entry_ext*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
