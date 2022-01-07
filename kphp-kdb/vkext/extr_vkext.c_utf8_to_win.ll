; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_utf8_to_win.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_utf8_to_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_buff_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"?1?\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"?2?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"?3?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"?4?\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"?5?\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"?6?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_to_win(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 3, %19
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 3, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %17, %4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %168, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %171

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @cur_buff_len, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %171

38:                                               ; preds = %33, %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %13, align 1
  %44 = load i8, i8* %13, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 128
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %181

54:                                               ; preds = %50
  %55 = call i32 @write_buff(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i8, i8* %13, align 1
  %58 = call i32 @write_buff_char(i8 signext %57)
  store i32 0, i32* %10, align 4
  br label %168

59:                                               ; preds = %38
  %60 = load i8, i8* %13, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 192
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %117

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %181

71:                                               ; preds = %67
  %72 = call i32 @write_buff(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %168

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 6
  store i32 %75, i32* %11, align 4
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, 128
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %116, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 128
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 -1, i32* %5, align 4
  br label %181

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 128
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @write_buff(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  br label %115

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @utf8_to_win_char(i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  %106 = trunc i32 %105 to i8
  %107 = call i32 @write_buff_char(i8 signext %106)
  br label %114

108:                                              ; preds = %101, %96
  %109 = call i32 @write_buff_char(i8 signext 38)
  %110 = call i32 @write_buff_char(i8 signext 35)
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @write_buff_long(i32 %111)
  %113 = call i32 @write_buff_char(i8 signext 59)
  br label %114

114:                                              ; preds = %108, %104
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %73
  br label %168

117:                                              ; preds = %59
  %118 = load i8, i8* %13, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 192
  %121 = icmp eq i32 %120, 192
  br i1 %121, label %122, label %167

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 -1, i32* %5, align 4
  br label %181

129:                                              ; preds = %125
  %130 = call i32 @write_buff(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  br label %131

131:                                              ; preds = %129, %122
  %132 = load i8, i8* %13, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %133, 192
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %13, align 1
  store i32 0, i32* %10, align 4
  %136 = load i8, i8* %13, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp slt i32 %137, 32
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i8, i8* %13, align 1
  %141 = zext i8 %140 to i32
  store i32 %141, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %166

142:                                              ; preds = %131
  %143 = load i8, i8* %13, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp slt i32 %144, 48
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i8, i8* %13, align 1
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %148, 32
  store i32 %149, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %165

150:                                              ; preds = %142
  %151 = load i8, i8* %13, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp slt i32 %152, 56
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i8, i8* %13, align 1
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %156, 48
  store i32 %157, i32* %11, align 4
  store i32 3, i32* %10, align 4
  br label %164

158:                                              ; preds = %150
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 -1, i32* %5, align 4
  br label %181

162:                                              ; preds = %158
  %163 = call i32 @write_buff(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  br label %164

164:                                              ; preds = %162, %154
  br label %165

165:                                              ; preds = %164, %146
  br label %166

166:                                              ; preds = %165, %139
  br label %167

167:                                              ; preds = %166, %117
  br label %168

168:                                              ; preds = %167, %116, %71, %56
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %26

171:                                              ; preds = %37, %26
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 -1, i32* %5, align 4
  br label %181

178:                                              ; preds = %174
  %179 = call i32 @write_buff(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  br label %180

180:                                              ; preds = %178, %171
  store i32 1, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %177, %161, %128, %90, %70, %53
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @write_buff(i8*, i32) #1

declare dso_local i32 @write_buff_char(i8 signext) #1

declare dso_local i32 @utf8_to_win_char(i32) #1

declare dso_local i32 @write_buff_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
