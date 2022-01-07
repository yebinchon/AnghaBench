; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_win_to_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_win_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@win_to_utf8_convert = common dso_local global i32* null, align 8
@cur_buff_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @win_to_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %176, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %179

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 38
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = call i32 (...) @write_buff_get_pos()
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %94

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %93

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 48
  br i1 %52, label %53, label %76

53:                                               ; preds = %45
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 57
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 131072
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 10
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %64, %61
  br label %92

76:                                               ; preds = %53, %45, %42
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 59
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %91

90:                                               ; preds = %79, %76
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %39
  br label %94

94:                                               ; preds = %93, %24
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %140

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp sge i32 %98, 32
  br i1 %99, label %100, label %140

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 33
  br i1 %102, label %103, label %140

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 34
  br i1 %105, label %106, label %140

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 36
  br i1 %108, label %109, label %140

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 39
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 60
  br i1 %114, label %115, label %140

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 62
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 92
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 8232
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 8233
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 131072
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @write_buff_set_pos(i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (...) @write_buff_get_pos()
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @write_char_utf8(i32 %138)
  br label %171

140:                                              ; preds = %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 3
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp sge i32 %144, 65536
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32*, i32** @win_to_utf8_convert, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @write_char_utf8(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @write_buff_char_pos(i8 signext 36, i32 %157)
  br label %170

159:                                              ; preds = %143, %140
  %160 = load i32*, i32** @win_to_utf8_convert, align 8
  %161 = load i8*, i8** %3, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds i32, i32* %160, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @write_char_utf8(i32 %168)
  br label %170

170:                                              ; preds = %159, %146
  br label %171

171:                                              ; preds = %170, %130
  %172 = load i32, i32* %6, align 4
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %171
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %9

179:                                              ; preds = %9
  %180 = load i32, i32* @cur_buff_len, align 4
  ret i32 %180
}

declare dso_local i32 @write_buff_get_pos(...) #1

declare dso_local i32 @write_buff_set_pos(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_char_utf8(i32) #1

declare dso_local i32 @write_buff_char_pos(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
