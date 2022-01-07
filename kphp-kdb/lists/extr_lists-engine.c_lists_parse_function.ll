; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_lists_parse_function.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_lists_parse_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Lists only support actor_id = 0\00", align 1
@TL_ERROR_WRONG_ACTOR_ID = common dso_local global i32 0, align 4
@tl_do_list_entry_get = common dso_local global i32 0, align 4
@TL_ERROR_UNKNOWN_FUNCTION_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Unknown op %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @lists_parse_function(i64 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @TL_ERROR_WRONG_ACTOR_ID, align 4
  %9 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %130

10:                                               ; preds = %1
  %11 = call i32 (...) @tl_fetch_int()
  store i32 %11, i32* %4, align 4
  %12 = call i64 (...) @tl_fetch_error()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %130

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %126 [
    i32 172, label %17
    i32 173, label %19
    i32 171, label %21
    i32 142, label %23
    i32 181, label %25
    i32 143, label %27
    i32 141, label %29
    i32 140, label %31
    i32 180, label %33
    i32 154, label %35
    i32 176, label %37
    i32 138, label %39
    i32 153, label %41
    i32 175, label %43
    i32 152, label %45
    i32 174, label %47
    i32 139, label %49
    i32 179, label %51
    i32 178, label %53
    i32 170, label %55
    i32 169, label %57
    i32 168, label %59
    i32 166, label %62
    i32 167, label %64
    i32 165, label %66
    i32 162, label %68
    i32 163, label %70
    i32 164, label %72
    i32 161, label %74
    i32 157, label %76
    i32 159, label %78
    i32 158, label %80
    i32 160, label %82
    i32 155, label %84
    i32 156, label %86
    i32 151, label %88
    i32 148, label %90
    i32 150, label %92
    i32 149, label %94
    i32 147, label %96
    i32 144, label %98
    i32 146, label %100
    i32 145, label %102
    i32 133, label %104
    i32 132, label %106
    i32 131, label %108
    i32 128, label %110
    i32 130, label %112
    i32 129, label %114
    i32 137, label %116
    i32 134, label %118
    i32 136, label %120
    i32 135, label %122
    i32 177, label %124
  ]

17:                                               ; preds = %15
  %18 = call %struct.tl_act_extra* (...) @tl_list_delete()
  store %struct.tl_act_extra* %18, %struct.tl_act_extra** %2, align 8
  br label %130

19:                                               ; preds = %15
  %20 = call %struct.tl_act_extra* (...) @tl_list_entry_delete()
  store %struct.tl_act_extra* %20, %struct.tl_act_extra** %2, align 8
  br label %130

21:                                               ; preds = %15
  %22 = call %struct.tl_act_extra* (...) @tl_object_delete()
  store %struct.tl_act_extra* %22, %struct.tl_act_extra** %2, align 8
  br label %130

23:                                               ; preds = %15
  %24 = call %struct.tl_act_extra* @tl_list_entry_set(i32 0)
  store %struct.tl_act_extra* %24, %struct.tl_act_extra** %2, align 8
  br label %130

25:                                               ; preds = %15
  %26 = call %struct.tl_act_extra* @tl_list_entry_set(i32 2)
  store %struct.tl_act_extra* %26, %struct.tl_act_extra** %2, align 8
  br label %130

27:                                               ; preds = %15
  %28 = call %struct.tl_act_extra* @tl_list_entry_set(i32 1)
  store %struct.tl_act_extra* %28, %struct.tl_act_extra** %2, align 8
  br label %130

29:                                               ; preds = %15
  %30 = call %struct.tl_act_extra* (...) @tl_list_entry_set_text()
  store %struct.tl_act_extra* %30, %struct.tl_act_extra** %2, align 8
  br label %130

31:                                               ; preds = %15
  %32 = call %struct.tl_act_extra* @tl_list_entry_set_flags(i32 0)
  store %struct.tl_act_extra* %32, %struct.tl_act_extra** %2, align 8
  br label %130

33:                                               ; preds = %15
  %34 = call %struct.tl_act_extra* @tl_list_entry_set_flags(i32 1)
  store %struct.tl_act_extra* %34, %struct.tl_act_extra** %2, align 8
  br label %130

35:                                               ; preds = %15
  %36 = call %struct.tl_act_extra* @tl_list_entry_set_flags(i32 2)
  store %struct.tl_act_extra* %36, %struct.tl_act_extra** %2, align 8
  br label %130

37:                                               ; preds = %15
  %38 = call %struct.tl_act_extra* @tl_list_entry_set_flags(i32 3)
  store %struct.tl_act_extra* %38, %struct.tl_act_extra** %2, align 8
  br label %130

39:                                               ; preds = %15
  %40 = call %struct.tl_act_extra* @tl_list_entry_set_value(i32 0)
  store %struct.tl_act_extra* %40, %struct.tl_act_extra** %2, align 8
  br label %130

41:                                               ; preds = %15
  %42 = call %struct.tl_act_extra* @tl_list_entry_set_value(i32 1)
  store %struct.tl_act_extra* %42, %struct.tl_act_extra** %2, align 8
  br label %130

43:                                               ; preds = %15
  %44 = call %struct.tl_act_extra* @tl_list_entry_set_value(i32 2)
  store %struct.tl_act_extra* %44, %struct.tl_act_extra** %2, align 8
  br label %130

45:                                               ; preds = %15
  %46 = call %struct.tl_act_extra* @tl_list_entry_incr_or_create(i32 0)
  store %struct.tl_act_extra* %46, %struct.tl_act_extra** %2, align 8
  br label %130

47:                                               ; preds = %15
  %48 = call %struct.tl_act_extra* @tl_list_entry_incr_or_create(i32 1)
  store %struct.tl_act_extra* %48, %struct.tl_act_extra** %2, align 8
  br label %130

49:                                               ; preds = %15
  %50 = call %struct.tl_act_extra* @tl_list_set_flags(i32 0)
  store %struct.tl_act_extra* %50, %struct.tl_act_extra** %2, align 8
  br label %130

51:                                               ; preds = %15
  %52 = call %struct.tl_act_extra* @tl_list_set_flags(i32 1)
  store %struct.tl_act_extra* %52, %struct.tl_act_extra** %2, align 8
  br label %130

53:                                               ; preds = %15
  %54 = call %struct.tl_act_extra* @tl_list_set_flags(i32 2)
  store %struct.tl_act_extra* %54, %struct.tl_act_extra** %2, align 8
  br label %130

55:                                               ; preds = %15
  %56 = call %struct.tl_act_extra* @tl_sublist_delete(i32 0)
  store %struct.tl_act_extra* %56, %struct.tl_act_extra** %2, align 8
  br label %130

57:                                               ; preds = %15
  %58 = call %struct.tl_act_extra* @tl_sublist_delete(i32 1)
  store %struct.tl_act_extra* %58, %struct.tl_act_extra** %2, align 8
  br label %130

59:                                               ; preds = %15
  %60 = load i32, i32* @tl_do_list_entry_get, align 4
  %61 = call %struct.tl_act_extra* @tl_list_entry_get(i32 %60)
  store %struct.tl_act_extra* %61, %struct.tl_act_extra** %2, align 8
  br label %130

62:                                               ; preds = %15
  %63 = call %struct.tl_act_extra* @tl_list_entry_get_int(i32 0, i32 0)
  store %struct.tl_act_extra* %63, %struct.tl_act_extra** %2, align 8
  br label %130

64:                                               ; preds = %15
  %65 = call %struct.tl_act_extra* @tl_list_entry_get_int(i32 0, i32 1)
  store %struct.tl_act_extra* %65, %struct.tl_act_extra** %2, align 8
  br label %130

66:                                               ; preds = %15
  %67 = call %struct.tl_act_extra* @tl_list_entry_get_int(i32 1, i32 2)
  store %struct.tl_act_extra* %67, %struct.tl_act_extra** %2, align 8
  br label %130

68:                                               ; preds = %15
  %69 = call %struct.tl_act_extra* @tl_list_entry_get_int(i32 1, i32 4)
  store %struct.tl_act_extra* %69, %struct.tl_act_extra** %2, align 8
  br label %130

70:                                               ; preds = %15
  %71 = call %struct.tl_act_extra* (...) @tl_list_entry_get_text()
  store %struct.tl_act_extra* %71, %struct.tl_act_extra** %2, align 8
  br label %130

72:                                               ; preds = %15
  %73 = call %struct.tl_act_extra* (...) @tl_list_entry_get_pos()
  store %struct.tl_act_extra* %73, %struct.tl_act_extra** %2, align 8
  br label %130

74:                                               ; preds = %15
  %75 = call %struct.tl_act_extra* @tl_list_get(i32 0, i32 0)
  store %struct.tl_act_extra* %75, %struct.tl_act_extra** %2, align 8
  br label %130

76:                                               ; preds = %15
  %77 = call %struct.tl_act_extra* @tl_list_get(i32 0, i32 1)
  store %struct.tl_act_extra* %77, %struct.tl_act_extra** %2, align 8
  br label %130

78:                                               ; preds = %15
  %79 = call %struct.tl_act_extra* @tl_list_get(i32 1, i32 0)
  store %struct.tl_act_extra* %79, %struct.tl_act_extra** %2, align 8
  br label %130

80:                                               ; preds = %15
  %81 = call %struct.tl_act_extra* @tl_list_get(i32 1, i32 1)
  store %struct.tl_act_extra* %81, %struct.tl_act_extra** %2, align 8
  br label %130

82:                                               ; preds = %15
  %83 = call %struct.tl_act_extra* @tl_list_count(i32 0)
  store %struct.tl_act_extra* %83, %struct.tl_act_extra** %2, align 8
  br label %130

84:                                               ; preds = %15
  %85 = call %struct.tl_act_extra* @tl_list_count(i32 1)
  store %struct.tl_act_extra* %85, %struct.tl_act_extra** %2, align 8
  br label %130

86:                                               ; preds = %15
  %87 = call %struct.tl_act_extra* @tl_list_count(i32 2)
  store %struct.tl_act_extra* %87, %struct.tl_act_extra** %2, align 8
  br label %130

88:                                               ; preds = %15
  %89 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 0, i32 0, i32 0)
  store %struct.tl_act_extra* %89, %struct.tl_act_extra** %2, align 8
  br label %130

90:                                               ; preds = %15
  %91 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 0, i32 1, i32 0)
  store %struct.tl_act_extra* %91, %struct.tl_act_extra** %2, align 8
  br label %130

92:                                               ; preds = %15
  %93 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 0, i32 0, i32 1)
  store %struct.tl_act_extra* %93, %struct.tl_act_extra** %2, align 8
  br label %130

94:                                               ; preds = %15
  %95 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 0, i32 1, i32 1)
  store %struct.tl_act_extra* %95, %struct.tl_act_extra** %2, align 8
  br label %130

96:                                               ; preds = %15
  %97 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 1, i32 0, i32 0)
  store %struct.tl_act_extra* %97, %struct.tl_act_extra** %2, align 8
  br label %130

98:                                               ; preds = %15
  %99 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 1, i32 1, i32 0)
  store %struct.tl_act_extra* %99, %struct.tl_act_extra** %2, align 8
  br label %130

100:                                              ; preds = %15
  %101 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 1, i32 0, i32 1)
  store %struct.tl_act_extra* %101, %struct.tl_act_extra** %2, align 8
  br label %130

102:                                              ; preds = %15
  %103 = call %struct.tl_act_extra* @tl_list_intersect(i32 1, i32 1, i32 1, i32 1)
  store %struct.tl_act_extra* %103, %struct.tl_act_extra** %2, align 8
  br label %130

104:                                              ; preds = %15
  %105 = call %struct.tl_act_extra* @tl_list_intersect(i32 0, i32 0, i32 0, i32 0)
  store %struct.tl_act_extra* %105, %struct.tl_act_extra** %2, align 8
  br label %130

106:                                              ; preds = %15
  %107 = call %struct.tl_act_extra* @tl_list_intersect(i32 0, i32 0, i32 1, i32 0)
  store %struct.tl_act_extra* %107, %struct.tl_act_extra** %2, align 8
  br label %130

108:                                              ; preds = %15
  %109 = call %struct.tl_act_extra* @tl_list_sum(i32 0, i32 0)
  store %struct.tl_act_extra* %109, %struct.tl_act_extra** %2, align 8
  br label %130

110:                                              ; preds = %15
  %111 = call %struct.tl_act_extra* @tl_list_sum(i32 1, i32 0)
  store %struct.tl_act_extra* %111, %struct.tl_act_extra** %2, align 8
  br label %130

112:                                              ; preds = %15
  %113 = call %struct.tl_act_extra* @tl_list_sum(i32 0, i32 1)
  store %struct.tl_act_extra* %113, %struct.tl_act_extra** %2, align 8
  br label %130

114:                                              ; preds = %15
  %115 = call %struct.tl_act_extra* @tl_list_sum(i32 1, i32 1)
  store %struct.tl_act_extra* %115, %struct.tl_act_extra** %2, align 8
  br label %130

116:                                              ; preds = %15
  %117 = call %struct.tl_act_extra* @tl_list_sorted(i32 0, i32 0)
  store %struct.tl_act_extra* %117, %struct.tl_act_extra** %2, align 8
  br label %130

118:                                              ; preds = %15
  %119 = call %struct.tl_act_extra* @tl_list_sorted(i32 0, i32 1)
  store %struct.tl_act_extra* %119, %struct.tl_act_extra** %2, align 8
  br label %130

120:                                              ; preds = %15
  %121 = call %struct.tl_act_extra* @tl_list_sorted(i32 1, i32 0)
  store %struct.tl_act_extra* %121, %struct.tl_act_extra** %2, align 8
  br label %130

122:                                              ; preds = %15
  %123 = call %struct.tl_act_extra* @tl_list_sorted(i32 1, i32 1)
  store %struct.tl_act_extra* %123, %struct.tl_act_extra** %2, align 8
  br label %130

124:                                              ; preds = %15
  %125 = call %struct.tl_act_extra* (...) @tl_datedistr()
  store %struct.tl_act_extra* %125, %struct.tl_act_extra** %2, align 8
  br label %130

126:                                              ; preds = %15
  %127 = load i32, i32* @TL_ERROR_UNKNOWN_FUNCTION_ID, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @tl_fetch_set_error_format(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %130

130:                                              ; preds = %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %14, %7
  %131 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %131
}

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local %struct.tl_act_extra* @tl_list_delete(...) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_delete(...) #1

declare dso_local %struct.tl_act_extra* @tl_object_delete(...) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_set(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_set_text(...) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_set_flags(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_set_value(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_incr_or_create(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_set_flags(i32) #1

declare dso_local %struct.tl_act_extra* @tl_sublist_delete(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_get(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_get_int(i32, i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_get_text(...) #1

declare dso_local %struct.tl_act_extra* @tl_list_entry_get_pos(...) #1

declare dso_local %struct.tl_act_extra* @tl_list_get(i32, i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_count(i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_intersect(i32, i32, i32, i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_sum(i32, i32) #1

declare dso_local %struct.tl_act_extra* @tl_list_sorted(i32, i32) #1

declare dso_local %struct.tl_act_extra* @tl_datedistr(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
