; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_gzlog.c_gzlog_compress.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_gzlog.c_gzlog_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log = type { i64, i64, i64, i32, i32, i32, i32 }

@LOGID = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".add\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@DICT = common dso_local global i64 0, align 8
@COMPRESS_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzlog_compress(%struct.log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.log*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca %struct.log*, align 8
  store %struct.log* %0, %struct.log** %3, align 8
  %12 = load %struct.log*, %struct.log** %3, align 8
  store %struct.log* %12, %struct.log** %11, align 8
  %13 = load %struct.log*, %struct.log** %11, align 8
  %14 = icmp eq %struct.log* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.log*, %struct.log** %11, align 8
  %17 = getelementptr inbounds %struct.log, %struct.log* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LOGID, align 4
  %20 = call i64 @strcmp(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %1
  store i32 -3, i32* %2, align 4
  br label %223

23:                                               ; preds = %15
  %24 = load %struct.log*, %struct.log** %11, align 8
  %25 = call i64 @log_check(%struct.log* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.log*, %struct.log** %11, align 8
  %29 = call i64 @log_open(%struct.log* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %223

32:                                               ; preds = %27, %23
  %33 = load %struct.log*, %struct.log** %11, align 8
  %34 = getelementptr inbounds %struct.log, %struct.log* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.log*, %struct.log** %11, align 8
  %37 = getelementptr inbounds %struct.log, %struct.log* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = and i64 %39, -1024
  %41 = load %struct.log*, %struct.log** %11, align 8
  %42 = getelementptr inbounds %struct.log, %struct.log* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 -2, i32* %2, align 4
  br label %223

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.log*, %struct.log** %11, align 8
  %52 = getelementptr inbounds %struct.log, %struct.log* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.log*, %struct.log** %11, align 8
  %55 = getelementptr inbounds %struct.log, %struct.log* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i64 @lseek(i32 %53, i64 %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %220

62:                                               ; preds = %50
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %96, %62
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load %struct.log*, %struct.log** %11, align 8
  %69 = getelementptr inbounds %struct.log, %struct.log* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %72 = call i64 (i32, ...) @read(i32 %70, i8* %71, i32 5)
  %73 = icmp ne i64 %72, 5
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %100

75:                                               ; preds = %67
  %76 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i64 @PULL2(i8* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %95, label %84

84:                                               ; preds = %75
  %85 = load %struct.log*, %struct.log** %11, align 8
  %86 = getelementptr inbounds %struct.log, %struct.log* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i64, i64* %6, align 8
  %92 = call i64 (i32, ...) @read(i32 %87, i8* %90, i64 %91)
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84, %75
  br label %100

96:                                               ; preds = %84
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %8, align 8
  br label %63

100:                                              ; preds = %95, %74, %63
  %101 = load %struct.log*, %struct.log** %11, align 8
  %102 = getelementptr inbounds %struct.log, %struct.log* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SEEK_CUR, align 4
  %105 = call i64 @lseek(i32 %103, i64 0, i32 %104)
  %106 = load %struct.log*, %struct.log** %11, align 8
  %107 = getelementptr inbounds %struct.log, %struct.log* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 4
  %110 = load %struct.log*, %struct.log** %11, align 8
  %111 = getelementptr inbounds %struct.log, %struct.log* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %109, %112
  %114 = icmp ne i64 %105, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %220

116:                                              ; preds = %100
  %117 = load %struct.log*, %struct.log** %11, align 8
  %118 = call i32 @log_touch(%struct.log* %117)
  %119 = load %struct.log*, %struct.log** %11, align 8
  %120 = getelementptr inbounds %struct.log, %struct.log* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strcpy(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.log*, %struct.log** %11, align 8
  %124 = getelementptr inbounds %struct.log, %struct.log* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @O_WRONLY, align 4
  %127 = load i32, i32* @O_CREAT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @O_TRUNC, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @open(i32 %125, i32 %130, i32 420)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %220

135:                                              ; preds = %116
  %136 = load i32, i32* %4, align 4
  %137 = load i8*, i8** %9, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call i64 (i32, ...) @write(i32 %136, i8* %137, i64 %138)
  %140 = load i64, i64* %7, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @close(i32 %144)
  %146 = or i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %220

149:                                              ; preds = %135
  %150 = load %struct.log*, %struct.log** %11, align 8
  %151 = call i32 @log_touch(%struct.log* %150)
  %152 = load %struct.log*, %struct.log** %11, align 8
  %153 = getelementptr inbounds %struct.log, %struct.log* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strcpy(i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %156 = load %struct.log*, %struct.log** %11, align 8
  %157 = getelementptr inbounds %struct.log, %struct.log* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @O_WRONLY, align 4
  %160 = load i32, i32* @O_CREAT, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @O_TRUNC, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @open(i32 %158, i32 %163, i32 420)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %149
  br label %220

168:                                              ; preds = %149
  %169 = load i64, i64* @DICT, align 8
  %170 = load i64, i64* %7, align 8
  %171 = icmp ugt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i64, i64* %7, align 8
  br label %176

174:                                              ; preds = %168
  %175 = load i64, i64* @DICT, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i64 [ %173, %172 ], [ %175, %174 ]
  store i64 %177, i64* %8, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = load i64, i64* %8, align 8
  %183 = sub i64 0, %182
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i64, i64* %8, align 8
  %186 = call i64 (i32, ...) @write(i32 %178, i8* %184, i64 %185)
  %187 = load i64, i64* %8, align 8
  %188 = icmp ne i64 %186, %187
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @close(i32 %191)
  %193 = or i32 %190, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %176
  br label %220

196:                                              ; preds = %176
  %197 = load %struct.log*, %struct.log** %11, align 8
  %198 = call i32 @log_touch(%struct.log* %197)
  %199 = load %struct.log*, %struct.log** %11, align 8
  %200 = getelementptr inbounds %struct.log, %struct.log* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.log*, %struct.log** %11, align 8
  %203 = getelementptr inbounds %struct.log, %struct.log* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.log*, %struct.log** %11, align 8
  %205 = getelementptr inbounds %struct.log, %struct.log* %204, i32 0, i32 2
  store i64 0, i64* %205, align 8
  %206 = load %struct.log*, %struct.log** %11, align 8
  %207 = load i32, i32* @COMPRESS_OP, align 4
  %208 = call i64 @log_mark(%struct.log* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %196
  br label %220

211:                                              ; preds = %196
  %212 = call i32 @BAIL(i32 7)
  %213 = load %struct.log*, %struct.log** %11, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = load i64, i64* %7, align 8
  %216 = call i32 @log_compress(%struct.log* %213, i8* %214, i64 %215)
  store i32 %216, i32* %5, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %223

220:                                              ; preds = %210, %195, %167, %148, %134, %115, %61
  %221 = load i8*, i8** %9, align 8
  %222 = call i32 @free(i8* %221)
  store i32 -1, i32* %2, align 4
  br label %223

223:                                              ; preds = %220, %211, %48, %31, %22
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @log_check(%struct.log*) #1

declare dso_local i64 @log_open(%struct.log*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, ...) #1

declare dso_local i64 @PULL2(i8*) #1

declare dso_local i32 @log_touch(%struct.log*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i64 @write(i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @log_mark(%struct.log*, i32) #1

declare dso_local i32 @BAIL(i32) #1

declare dso_local i32 @log_compress(%struct.log*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
