; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_lex.c_expandlex.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_lex.c_expandlex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, i32*, i32 }

@fsm = common dso_local global %struct.fsm* null, align 8
@S_SELF = common dso_local global i32 0, align 4
@bigfsm = common dso_local global i32** null, align 8
@MAXSTATE = common dso_local global i32 0, align 4
@QBSBIT = common dso_local global i32 0, align 4
@S_EOB = common dso_local global i32 0, align 4
@EOB = common dso_local global i64 0, align 8
@EOFC = common dso_local global i64 0, align 8
@S_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expandlex() #0 {
  %1 = alloca %struct.fsm*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.fsm*, %struct.fsm** @fsm, align 8
  store %struct.fsm* %5, %struct.fsm** %1, align 8
  br label %6

6:                                                ; preds = %134, %0
  %7 = load %struct.fsm*, %struct.fsm** %1, align 8
  %8 = getelementptr inbounds %struct.fsm, %struct.fsm* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %137

11:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %130, %11
  %13 = load %struct.fsm*, %struct.fsm** %1, align 8
  %14 = getelementptr inbounds %struct.fsm, %struct.fsm* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %133

21:                                               ; preds = %12
  %22 = load %struct.fsm*, %struct.fsm** %1, align 8
  %23 = getelementptr inbounds %struct.fsm, %struct.fsm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @S_SELF, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = xor i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.fsm*, %struct.fsm** %1, align 8
  %33 = getelementptr inbounds %struct.fsm, %struct.fsm* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %112 [
    i32 128, label %39
    i32 130, label %58
    i32 129, label %93
  ]

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32**, i32*** @bigfsm, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.fsm*, %struct.fsm** %1, align 8
  %51 = getelementptr inbounds %struct.fsm, %struct.fsm* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %44, i32* %53, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %40

57:                                               ; preds = %40
  br label %130

58:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i32, i32* %3, align 4
  %61 = icmp sle i32 %60, 256
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = icmp sle i32 97, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp sle i32 %66, 122
  br i1 %67, label %77, label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %3, align 4
  %70 = icmp sle i32 65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp sle i32 %72, 90
  br i1 %73, label %77, label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 95
  br i1 %76, label %77, label %88

77:                                               ; preds = %74, %71, %65
  %78 = load i32, i32* %4, align 4
  %79 = load i32**, i32*** @bigfsm, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.fsm*, %struct.fsm** %1, align 8
  %85 = getelementptr inbounds %struct.fsm, %struct.fsm* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %78, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %74
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %59

92:                                               ; preds = %59
  br label %130

93:                                               ; preds = %31
  store i32 48, i32* %3, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %3, align 4
  %96 = icmp sle i32 %95, 57
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = load i32**, i32*** @bigfsm, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.fsm*, %struct.fsm** %1, align 8
  %105 = getelementptr inbounds %struct.fsm, %struct.fsm* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %98, i32* %107, align 4
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %94

111:                                              ; preds = %94
  br label %130

112:                                              ; preds = %31
  %113 = load i32, i32* %4, align 4
  %114 = load i32**, i32*** @bigfsm, align 8
  %115 = load %struct.fsm*, %struct.fsm** %1, align 8
  %116 = getelementptr inbounds %struct.fsm, %struct.fsm* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %114, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.fsm*, %struct.fsm** %1, align 8
  %126 = getelementptr inbounds %struct.fsm, %struct.fsm* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %113, i32* %128, align 4
  br label %129

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %111, %92, %57
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %2, align 4
  br label %12

133:                                              ; preds = %12
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.fsm*, %struct.fsm** %1, align 8
  %136 = getelementptr inbounds %struct.fsm, %struct.fsm* %135, i32 1
  store %struct.fsm* %136, %struct.fsm** %1, align 8
  br label %6

137:                                              ; preds = %6
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %229, %137
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @MAXSTATE, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %232

142:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %196, %142
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %144, 255
  br i1 %145, label %146, label %199

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %147, 63
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = icmp eq i32 %150, 92
  br i1 %151, label %152, label %195

152:                                              ; preds = %149, %146
  %153 = load i32**, i32*** @bigfsm, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %152
  %164 = load i32**, i32*** @bigfsm, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, -1
  %174 = load i32**, i32*** @bigfsm, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %173, i32* %181, align 4
  br label %182

182:                                              ; preds = %163, %152
  %183 = load i32, i32* @QBSBIT, align 4
  %184 = xor i32 %183, -1
  %185 = load i32**, i32*** @bigfsm, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, %184
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %182, %149
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %3, align 4
  br label %143

199:                                              ; preds = %143
  %200 = load i32, i32* @S_EOB, align 4
  %201 = xor i32 %200, -1
  %202 = load i32**, i32*** @bigfsm, align 8
  %203 = load i64, i64* @EOB, align 8
  %204 = getelementptr inbounds i32*, i32** %202, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %2, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %201, i32* %208, align 4
  %209 = load i32**, i32*** @bigfsm, align 8
  %210 = load i64, i64* @EOFC, align 8
  %211 = getelementptr inbounds i32*, i32** %209, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %2, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %199
  %219 = load i32, i32* @S_EOF, align 4
  %220 = xor i32 %219, -1
  %221 = load i32**, i32*** @bigfsm, align 8
  %222 = load i64, i64* @EOFC, align 8
  %223 = getelementptr inbounds i32*, i32** %221, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %220, i32* %227, align 4
  br label %228

228:                                              ; preds = %218, %199
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %2, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %2, align 4
  br label %138

232:                                              ; preds = %138
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
