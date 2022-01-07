; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_show_pre_context.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_show_pre_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32, i64, i64 }
%struct.grep_source = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*, %struct.grep_source*, i8*, i8*, i32)* @show_pre_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_pre_context(%struct.grep_opt* %0, %struct.grep_source* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.grep_opt*, align 8
  %7 = alloca %struct.grep_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  store %struct.grep_opt* %0, %struct.grep_opt** %6, align 8
  store %struct.grep_source* %1, %struct.grep_source** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %30 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %37 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub i32 %35, %38
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %34, %5
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %43 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ule i32 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %48 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %54 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %59 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @match_funcname(%struct.grep_opt* %58, %struct.grep_source* %59, i8* %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %16, align 4
  br label %66

65:                                               ; preds = %57
  store i32 1, i32* %15, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %68 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %66, %51
  br label %72

72:                                               ; preds = %152, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %75 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ugt i8* %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ugt i32 %79, %80
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi i1 [ false, %72 ], [ %81, %78 ]
  br i1 %83, label %84, label %153

84:                                               ; preds = %82
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %87, i8** %8, align 8
  store i8* %87, i8** %18, align 8
  br label %88

88:                                               ; preds = %102, %84
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %91 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ugt i8* %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 10
  br label %100

100:                                              ; preds = %94, %88
  %101 = phi i1 [ false, %88 ], [ %99, %94 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %8, align 8
  br label %88

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = call i64 @is_empty_line(i8* %111, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %117 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = call i64 @match_funcname(%struct.grep_opt* %116, %struct.grep_source* %117, i8* %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %115, %110
  store i32 0, i32* %16, align 4
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i8*, i8** %17, align 8
  store i8* %130, i8** %8, align 8
  br label %153

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %115, %105
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %137 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = call i64 @match_funcname(%struct.grep_opt* %136, %struct.grep_source* %137, i8* %138, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %144 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %145 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 1, i32* %16, align 4
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %149, %148
  br label %152

152:                                              ; preds = %151, %135, %132
  br label %72

153:                                              ; preds = %127, %82
  %154 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %155 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %163 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @show_funcname_line(%struct.grep_opt* %162, %struct.grep_source* %163, i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %158, %153
  br label %168

168:                                              ; preds = %188, %167
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %168
  %173 = load i8*, i8** %8, align 8
  store i8* %173, i8** %19, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 61, i32 45
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %20, align 1
  br label %180

180:                                              ; preds = %185, %172
  %181 = load i8*, i8** %19, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 10
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i8*, i8** %19, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %19, align 8
  br label %180

188:                                              ; preds = %180
  %189 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i8*, i8** %19, align 8
  %192 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %193 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i8, i8* %20, align 1
  %197 = call i32 @show_line(%struct.grep_opt* %189, i8* %190, i8* %191, i32 %194, i32 %195, i32 0, i8 signext %196)
  %198 = load i8*, i8** %19, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  store i8* %199, i8** %8, align 8
  %200 = load i32, i32* %11, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %168

202:                                              ; preds = %168
  ret void
}

declare dso_local i64 @match_funcname(%struct.grep_opt*, %struct.grep_source*, i8*, i8*) #1

declare dso_local i64 @is_empty_line(i8*, i8*) #1

declare dso_local i32 @show_funcname_line(%struct.grep_opt*, %struct.grep_source*, i8*, i32) #1

declare dso_local i32 @show_line(%struct.grep_opt*, i8*, i8*, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
