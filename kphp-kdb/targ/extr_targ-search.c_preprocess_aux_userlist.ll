; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_preprocess_aux_userlist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_preprocess_aux_userlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"preprocess_aux_userlist: size=%d tag=%d A=%d %d %d...\0A\00", align 1
@aux_userlist_size = common dso_local global i32 0, align 4
@aux_userlist_tag = common dso_local global i32 0, align 4
@aux_userlist = common dso_local global i32* null, align 8
@MAX_AUX_USERS = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@User = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"AFTER preprocess_aux_userlist: size=%ld tag=%d A=%d %d %d...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preprocess_aux_userlist() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @aux_userlist_size, align 4
  %7 = sext i32 %6 to i64
  %8 = load i32, i32* @aux_userlist_tag, align 4
  %9 = load i32*, i32** @aux_userlist, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @aux_userlist, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @aux_userlist, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %8, i32 %11, i32 %14, i32 %17)
  %19 = load i32, i32* @aux_userlist_size, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* @aux_userlist_tag, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %0
  store i32 0, i32* @aux_userlist_size, align 4
  store i32 0, i32* %1, align 4
  br label %154

25:                                               ; preds = %21
  %26 = load i32, i32* @aux_userlist_size, align 4
  %27 = load i32, i32* @MAX_AUX_USERS, align 4
  %28 = icmp ule i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %71, %25
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @aux_userlist_size, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32*, i32** @aux_userlist, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @log_split_mod, align 4
  %46 = srem i32 %44, %45
  %47 = load i32, i32* @log_split_min, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %36
  br label %71

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @log_split_mod, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @max_uid, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** @User, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57, %50
  br label %71

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** @aux_userlist, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %3, align 8
  %70 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %64, %49
  %72 = load i64, i64* %2, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %2, align 8
  br label %31

74:                                               ; preds = %31
  %75 = load i64, i64* %3, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* @aux_userlist_size, align 4
  store i32 0, i32* %1, align 4
  br label %154

78:                                               ; preds = %74
  store i64 1, i64* %2, align 8
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* %3, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32*, i32** @aux_userlist, align 8
  %85 = load i64, i64* %2, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @aux_userlist, align 8
  %89 = load i64, i64* %2, align 8
  %90 = sub nsw i64 %89, 1
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %87, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %99

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %2, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %2, align 8
  br label %79

99:                                               ; preds = %94, %79
  %100 = load i64, i64* %2, align 8
  %101 = load i64, i64* %3, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* %3, align 8
  %105 = sub nsw i64 %104, 1
  %106 = call i32 @aux_sort(i32 0, i64 %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i64, i64* %3, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* @aux_userlist_size, align 4
  store i64 1, i64* %2, align 8
  store i64 1, i64* %3, align 8
  br label %110

110:                                              ; preds = %136, %107
  %111 = load i64, i64* %2, align 8
  %112 = load i32, i32* @aux_userlist_size, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  %116 = load i32*, i32** @aux_userlist, align 8
  %117 = load i64, i64* %2, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @aux_userlist, align 8
  %121 = load i64, i64* %2, align 8
  %122 = sub nsw i64 %121, 1
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %119, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %115
  %127 = load i32*, i32** @aux_userlist, align 8
  %128 = load i64, i64* %2, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** @aux_userlist, align 8
  %132 = load i64, i64* %3, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %3, align 8
  %134 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %134, align 4
  br label %135

135:                                              ; preds = %126, %115
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %2, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %2, align 8
  br label %110

139:                                              ; preds = %110
  %140 = load i64, i64* %3, align 8
  %141 = load i32, i32* @aux_userlist_tag, align 4
  %142 = load i32*, i32** @aux_userlist, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** @aux_userlist, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** @aux_userlist, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %140, i32 %141, i32 %144, i32 %147, i32 %150)
  %152 = load i64, i64* %3, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* @aux_userlist_size, align 4
  store i32 %153, i32* %1, align 4
  br label %154

154:                                              ; preds = %139, %77, %24
  %155 = load i32, i32* %1, align 4
  ret i32 %155
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @aux_sort(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
