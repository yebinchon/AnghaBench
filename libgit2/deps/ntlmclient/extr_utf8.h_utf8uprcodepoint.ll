; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8uprcodepoint.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8uprcodepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8uprcodepoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 97, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 122, %6
  br i1 %7, label %32, label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 224, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 246, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 248, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp sge i32 254, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 945, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp sge i32 961, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %2, align 4
  %28 = icmp sle i32 963, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp sge i32 971, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %23, %17, %11, %5
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %33, 32
  store i32 %34, i32* %2, align 4
  br label %181

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %2, align 4
  %37 = icmp sle i32 256, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = icmp sge i32 303, %39
  br i1 %40, label %95, label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %2, align 4
  %43 = icmp sle i32 306, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = icmp sge i32 311, %45
  br i1 %46, label %95, label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %2, align 4
  %49 = icmp sle i32 330, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %2, align 4
  %52 = icmp sge i32 375, %51
  br i1 %52, label %95, label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %2, align 4
  %55 = icmp sle i32 386, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = icmp sge i32 389, %57
  br i1 %58, label %95, label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %2, align 4
  %61 = icmp sle i32 416, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = icmp sge i32 421, %63
  br i1 %64, label %95, label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %2, align 4
  %67 = icmp sle i32 478, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %2, align 4
  %70 = icmp sge i32 495, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %2, align 4
  %73 = icmp sle i32 504, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = icmp sge i32 543, %75
  br i1 %76, label %95, label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %2, align 4
  %79 = icmp sle i32 546, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = icmp sge i32 563, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %2, align 4
  %85 = icmp sle i32 582, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %2, align 4
  %88 = icmp sge i32 591, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %2, align 4
  %91 = icmp sle i32 984, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %2, align 4
  %94 = icmp sge i32 1007, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %86, %80, %74, %68, %62, %56, %50, %44, %38
  %96 = load i32, i32* %2, align 4
  %97 = and i32 %96, -2
  store i32 %97, i32* %2, align 4
  br label %180

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %2, align 4
  %100 = icmp sle i32 313, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %2, align 4
  %103 = icmp sge i32 328, %102
  br i1 %103, label %128, label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %2, align 4
  %106 = icmp sle i32 377, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %2, align 4
  %109 = icmp sge i32 382, %108
  br i1 %109, label %128, label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %2, align 4
  %112 = icmp sle i32 431, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %2, align 4
  %115 = icmp sge i32 432, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %2, align 4
  %118 = icmp sle i32 435, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %2, align 4
  %121 = icmp sge i32 438, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %2, align 4
  %124 = icmp sle i32 461, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32, i32* %2, align 4
  %127 = icmp sge i32 476, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %125, %119, %113, %107, %101
  %129 = load i32, i32* %2, align 4
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  %131 = load i32, i32* %2, align 4
  %132 = or i32 %131, 1
  store i32 %132, i32* %2, align 4
  br label %179

133:                                              ; preds = %125, %122
  %134 = load i32, i32* %2, align 4
  switch i32 %134, label %135 [
    i32 255, label %136
    i32 384, label %137
    i32 477, label %138
    i32 410, label %139
    i32 414, label %140
    i32 658, label %141
    i32 454, label %142
    i32 457, label %143
    i32 460, label %144
    i32 499, label %145
    i32 447, label %146
    i32 392, label %147
    i32 396, label %148
    i32 402, label %149
    i32 409, label %150
    i32 424, label %151
    i32 429, label %152
    i32 432, label %153
    i32 441, label %154
    i32 445, label %155
    i32 501, label %156
    i32 572, label %157
    i32 578, label %158
    i32 891, label %159
    i32 892, label %160
    i32 893, label %161
    i32 1011, label %162
    i32 940, label %163
    i32 941, label %164
    i32 942, label %165
    i32 943, label %166
    i32 972, label %167
    i32 973, label %168
    i32 974, label %169
    i32 881, label %170
    i32 883, label %171
    i32 887, label %172
    i32 977, label %173
    i32 983, label %174
    i32 1010, label %175
    i32 1016, label %176
    i32 1019, label %177
  ]

135:                                              ; preds = %133
  br label %178

136:                                              ; preds = %133
  store i32 376, i32* %2, align 4
  br label %178

137:                                              ; preds = %133
  store i32 579, i32* %2, align 4
  br label %178

138:                                              ; preds = %133
  store i32 398, i32* %2, align 4
  br label %178

139:                                              ; preds = %133
  store i32 573, i32* %2, align 4
  br label %178

140:                                              ; preds = %133
  store i32 544, i32* %2, align 4
  br label %178

141:                                              ; preds = %133
  store i32 439, i32* %2, align 4
  br label %178

142:                                              ; preds = %133
  store i32 452, i32* %2, align 4
  br label %178

143:                                              ; preds = %133
  store i32 455, i32* %2, align 4
  br label %178

144:                                              ; preds = %133
  store i32 458, i32* %2, align 4
  br label %178

145:                                              ; preds = %133
  store i32 497, i32* %2, align 4
  br label %178

146:                                              ; preds = %133
  store i32 503, i32* %2, align 4
  br label %178

147:                                              ; preds = %133
  store i32 391, i32* %2, align 4
  br label %178

148:                                              ; preds = %133
  store i32 395, i32* %2, align 4
  br label %178

149:                                              ; preds = %133
  store i32 401, i32* %2, align 4
  br label %178

150:                                              ; preds = %133
  store i32 408, i32* %2, align 4
  br label %178

151:                                              ; preds = %133
  store i32 423, i32* %2, align 4
  br label %178

152:                                              ; preds = %133
  store i32 428, i32* %2, align 4
  br label %178

153:                                              ; preds = %133
  store i32 431, i32* %2, align 4
  br label %178

154:                                              ; preds = %133
  store i32 440, i32* %2, align 4
  br label %178

155:                                              ; preds = %133
  store i32 444, i32* %2, align 4
  br label %178

156:                                              ; preds = %133
  store i32 500, i32* %2, align 4
  br label %178

157:                                              ; preds = %133
  store i32 571, i32* %2, align 4
  br label %178

158:                                              ; preds = %133
  store i32 577, i32* %2, align 4
  br label %178

159:                                              ; preds = %133
  store i32 1021, i32* %2, align 4
  br label %178

160:                                              ; preds = %133
  store i32 1022, i32* %2, align 4
  br label %178

161:                                              ; preds = %133
  store i32 1023, i32* %2, align 4
  br label %178

162:                                              ; preds = %133
  store i32 895, i32* %2, align 4
  br label %178

163:                                              ; preds = %133
  store i32 902, i32* %2, align 4
  br label %178

164:                                              ; preds = %133
  store i32 904, i32* %2, align 4
  br label %178

165:                                              ; preds = %133
  store i32 905, i32* %2, align 4
  br label %178

166:                                              ; preds = %133
  store i32 906, i32* %2, align 4
  br label %178

167:                                              ; preds = %133
  store i32 908, i32* %2, align 4
  br label %178

168:                                              ; preds = %133
  store i32 910, i32* %2, align 4
  br label %178

169:                                              ; preds = %133
  store i32 911, i32* %2, align 4
  br label %178

170:                                              ; preds = %133
  store i32 880, i32* %2, align 4
  br label %178

171:                                              ; preds = %133
  store i32 882, i32* %2, align 4
  br label %178

172:                                              ; preds = %133
  store i32 886, i32* %2, align 4
  br label %178

173:                                              ; preds = %133
  store i32 1012, i32* %2, align 4
  br label %178

174:                                              ; preds = %133
  store i32 975, i32* %2, align 4
  br label %178

175:                                              ; preds = %133
  store i32 1017, i32* %2, align 4
  br label %178

176:                                              ; preds = %133
  store i32 1015, i32* %2, align 4
  br label %178

177:                                              ; preds = %133
  store i32 1018, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135
  br label %179

179:                                              ; preds = %178, %128
  br label %180

180:                                              ; preds = %179, %95
  br label %181

181:                                              ; preds = %180, %32
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
