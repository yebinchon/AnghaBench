; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c__golomb_decode_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c__golomb_decode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEN_BITS = common dso_local global i32 0, align 4
@cur_bit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_golomb_decode_list(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* @LEN_BITS, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @LEN_BITS, align 4
  %25 = add nsw i32 %24, 1
  %26 = shl i32 1, %25
  store i32 %26, i32* %11, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = shl i32 %30, 24
  %32 = add nsw i32 %31, 8388608
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %44, %4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64, i64* @cur_bit, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = call i32 (...) @load_bit()
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @compute_golomb_parameter(i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %63, %48
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %59

68:                                               ; preds = %59
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %121, %68
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %14, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %72
  store i32 0, i32* %17, align 4
  br label %77

77:                                               ; preds = %80, %76
  %78 = load i64, i64* @cur_bit, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = call i32 (...) @load_bit()
  br label %77

85:                                               ; preds = %77
  %86 = call i32 (...) @load_bit()
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %101, %85
  %89 = load i32, i32* %18, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = shl i32 %92, 1
  store i32 %93, i32* %17, align 4
  %94 = load i64, i64* @cur_bit, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = call i32 (...) @load_bit()
  br label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %18, align 4
  br label %88

104:                                              ; preds = %88
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  %110 = shl i32 %109, 1
  store i32 %110, i32* %17, align 4
  %111 = load i64, i64* @cur_bit, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = call i32 (...) @load_bit()
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %116, %104
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %125, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %8, align 8
  br label %72

133:                                              ; preds = %72
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %134, 8388608
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 -1
  store i8* %139, i8** %5, align 8
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = icmp eq i8* %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32, i32* %13, align 4
  ret i32 %146
}

declare dso_local i32 @load_bit(...) #1

declare dso_local i32 @compute_golomb_parameter(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
