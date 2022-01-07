; ModuleID = '/home/carl/AnghaBench/i3/src/extr_commands_parser.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_commands_parser.c_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_string(i8** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 34
  br i1 %16, label %17, label %60

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  br label %23

23:                                               ; preds = %55, %17
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 34
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i1 [ false, %23 ], [ %34, %29 ]
  br i1 %36, label %37, label %59

37:                                               ; preds = %35
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i8**, i8*** %4, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i8**, i8*** %4, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  br label %54

54:                                               ; preds = %50, %43, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  br label %23

59:                                               ; preds = %35
  br label %158

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %101, label %63

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %96, %63
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 59
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load i8**, i8*** %4, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 44
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i8**, i8*** %4, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load i8**, i8*** %4, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 13
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i8**, i8*** %4, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br label %94

94:                                               ; preds = %88, %82, %76, %70, %64
  %95 = phi i1 [ false, %82 ], [ false, %76 ], [ false, %70 ], [ false, %64 ], [ %93, %88 ]
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = load i8**, i8*** %4, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %97, align 8
  br label %64

100:                                              ; preds = %94
  br label %157

101:                                              ; preds = %60
  br label %102

102:                                              ; preds = %152, %101
  %103 = load i8**, i8*** %4, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %150

108:                                              ; preds = %102
  %109 = load i8**, i8*** %4, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 9
  br i1 %113, label %114, label %150

114:                                              ; preds = %108
  %115 = load i8**, i8*** %4, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 93
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = load i8**, i8*** %4, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 44
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = load i8**, i8*** %4, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 59
  br i1 %131, label %132, label %150

132:                                              ; preds = %126
  %133 = load i8**, i8*** %4, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 13
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load i8**, i8*** %4, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 10
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i8**, i8*** %4, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %144, %138, %132, %126, %120, %114, %108, %102
  %151 = phi i1 [ false, %138 ], [ false, %132 ], [ false, %126 ], [ false, %120 ], [ false, %114 ], [ false, %108 ], [ false, %102 ], [ %149, %144 ]
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = load i8**, i8*** %4, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %153, align 8
  br label %102

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %100
  br label %158

158:                                              ; preds = %157, %59
  %159 = load i8**, i8*** %4, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i8* null, i8** %3, align 8
  br label %230

164:                                              ; preds = %158
  %165 = load i8**, i8*** %4, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = add nsw i64 %170, 1
  %172 = trunc i64 %171 to i32
  %173 = call i8* @scalloc(i32 %172, i32 1)
  store i8* %173, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %223, %164
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = load i8**, i8*** %4, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = icmp slt i64 %176, %182
  br i1 %183, label %184, label %228

184:                                              ; preds = %174
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 92
  br i1 %191, label %192, label %213

192:                                              ; preds = %184
  %193 = load i8*, i8** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 34
  br i1 %200, label %210, label %201

201:                                              ; preds = %192
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 92
  br i1 %209, label %210, label %213

210:                                              ; preds = %201, %192
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %210, %201, %184
  %214 = load i8*, i8** %6, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  store i8 %218, i8* %222, align 1
  br label %223

223:                                              ; preds = %213
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %174

228:                                              ; preds = %174
  %229 = load i8*, i8** %7, align 8
  store i8* %229, i8** %3, align 8
  br label %230

230:                                              ; preds = %228, %163
  %231 = load i8*, i8** %3, align 8
  ret i8* %231
}

declare dso_local i8* @scalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
