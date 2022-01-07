; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@left_files = common dso_local global i64 0, align 8
@engineF = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@f_buff_size = common dso_local global i32* null, align 8
@f_buff_r = common dso_local global i32* null, align 8
@f_buff = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Dump %d is broken. It contains event of size %d. f_buff_size = %d, f_buff_r = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  br label %7

7:                                                ; preds = %219, %0
  %8 = load i64, i64* @left_files, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %220

10:                                               ; preds = %7
  store i32 2147483637, i32* %2, align 4
  %11 = load i32, i32* @engineF, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %61, %10
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @engineN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load i32*, i32** @fd, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %16
  %24 = load i32*, i32** @f_buff_size, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @f_buff_r, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %28, %33
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %60

36:                                               ; preds = %23
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @load(i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i32*, i32** @fd, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 -1, i32* %44, align 4
  %45 = load i64, i64* @left_files, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* @left_files, align 8
  %47 = load i32*, i32** @f_buff_size, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @f_buff_r, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %51, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %40, %36, %23, %16
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %12

64:                                               ; preds = %12
  %65 = load i32, i32* @engineF, align 4
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %156, %64
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @engineN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %159

70:                                               ; preds = %66
  %71 = load i32*, i32** @fd, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %155

77:                                               ; preds = %70
  %78 = load i8**, i8*** @f_buff, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i32*, i32** @f_buff_r, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %82, i64 %88
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %3, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %4, align 4
  %98 = load i32*, i32** @f_buff_size, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @f_buff_r, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %102, %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 8, %109
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %148

112:                                              ; preds = %77
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @load(i32 %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** @f_buff_size, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** @f_buff_r, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %121, %126
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 8, %128
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %116, %112
  %132 = load i32, i32* @stderr, align 4
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32*, i32** @f_buff_size, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @f_buff_r, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @fprintf(i32 %132, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134, i32 %139, i32 %144)
  %146 = call i32 @assert(i32 0)
  br label %147

147:                                              ; preds = %131, %116
  br label %148

148:                                              ; preds = %147, %77
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* %2, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %3, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %70
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %66

159:                                              ; preds = %66
  %160 = load i32, i32* @engineF, align 4
  store i32 %160, i32* %1, align 4
  br label %161

161:                                              ; preds = %216, %159
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* @engineN, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %219

165:                                              ; preds = %161
  %166 = load i32*, i32** @fd, align 8
  %167 = load i32, i32* %1, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %165
  %173 = load i8**, i8*** @f_buff, align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i32*, i32** @f_buff_r, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %177, i64 %183
  store i8* %184, i8** %6, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = bitcast i8* %185 to i32*
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %3, align 4
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %2, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %214

192:                                              ; preds = %172
  %193 = load i8*, i8** %6, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %4, align 4
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 8, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @my_write(i8* %197, i32 %201)
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = add i64 8, %204
  %206 = load i32*, i32** @f_buff_r, align 8
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, %205
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 4
  br label %214

214:                                              ; preds = %192, %172
  br label %215

215:                                              ; preds = %214, %165
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %1, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %1, align 4
  br label %161

219:                                              ; preds = %161
  br label %7

220:                                              ; preds = %7
  ret void
}

declare dso_local i32 @load(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @my_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
