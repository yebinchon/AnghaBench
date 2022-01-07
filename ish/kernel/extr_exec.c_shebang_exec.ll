; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_shebang_exec.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_shebang_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fd*, i8*, i32)*, i64 (%struct.fd*, i32, i32)* }

@SEEK_SET = common dso_local global i32 0, align 4
@_EIO = common dso_local global i32 0, align 4
@_ENOEXEC = common dso_local global i32 0, align 4
@_E2BIG = common dso_local global i32 0, align 4
@O_RDONLY_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i8*, i8*, i8*)* @shebang_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shebang_exec(%struct.fd* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [4096 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca %struct.fd*, align 8
  %22 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load %struct.fd*, %struct.fd** %6, align 8
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64 (%struct.fd*, i32, i32)*, i64 (%struct.fd*, i32, i32)** %26, align 8
  %28 = load %struct.fd*, %struct.fd** %6, align 8
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 %27(%struct.fd* %28, i32 0, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @_EIO, align 4
  store i32 %33, i32* %5, align 4
  br label %237

34:                                               ; preds = %4
  %35 = load %struct.fd*, %struct.fd** %6, align 8
  %36 = getelementptr inbounds %struct.fd, %struct.fd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.fd*, i8*, i32)*, i32 (%struct.fd*, i8*, i32)** %38, align 8
  %40 = load %struct.fd*, %struct.fd** %6, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %42 = call i32 %39(%struct.fd* %40, i8* %41, i32 127)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @_EIO, align 4
  store i32 %46, i32* %5, align 4
  br label %237

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %52 = call i8* @strchr(i8* %51, i8 signext 10)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @_ENOEXEC, align 4
  store i32 %56, i32* %5, align 4
  br label %237

57:                                               ; preds = %47
  %58 = load i8*, i8** %12, align 8
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 35
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 33
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %57
  %72 = load i32, i32* @_ENOEXEC, align 4
  store i32 %72, i32* %5, align 4
  br label %237

73:                                               ; preds = %65
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %13, align 8
  br label %76

76:                                               ; preds = %81, %73
  %77 = load i8*, i8** %13, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %13, align 8
  br label %76

84:                                               ; preds = %76
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @_ENOEXEC, align 4
  store i32 %90, i32* %5, align 4
  br label %237

91:                                               ; preds = %84
  %92 = load i8*, i8** %13, align 8
  store i8* %92, i8** %14, align 8
  br label %93

93:                                               ; preds = %105, %91
  %94 = load i8*, i8** %13, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 32
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %13, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i1 [ false, %93 ], [ %102, %98 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i8*, i8** %13, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %13, align 8
  br label %93

108:                                              ; preds = %103
  %109 = load i8*, i8** %13, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %13, align 8
  store i8 0, i8* %114, align 1
  br label %116

116:                                              ; preds = %121, %113
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %13, align 8
  br label %116

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i8*, i8** %13, align 8
  store i8* %126, i8** %15, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 0)
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  store i8* %129, i8** %13, align 8
  br label %130

130:                                              ; preds = %135, %125
  %131 = load i8*, i8** %13, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %13, align 8
  store i8 0, i8* %136, align 1
  br label %130

138:                                              ; preds = %130
  %139 = load i8*, i8** %15, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i8* null, i8** %15, align 8
  br label %144

144:                                              ; preds = %143, %138
  %145 = load i8*, i8** %8, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %16, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = call i64 @strings_size(i8* %151)
  store i64 %152, i64* %17, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = add nsw i32 %154, 1
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = add nsw i32 %155, %157
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %18, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %144
  %164 = load i8*, i8** %15, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %18, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %18, align 8
  br label %170

170:                                              ; preds = %163, %144
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %18, align 8
  %173 = add i64 %171, %172
  %174 = icmp uge i64 %173, 4096
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @_E2BIG, align 4
  store i32 %176, i32* %5, align 4
  br label %237

177:                                              ; preds = %170
  store i64 0, i64* %20, align 8
  %178 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %179 = load i8*, i8** %14, align 8
  %180 = call i32 @strcpy(i8* %178, i8* %179)
  %181 = load i8*, i8** %14, align 8
  %182 = call i32 @strlen(i8* %181)
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %20, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %20, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %201

189:                                              ; preds = %177
  %190 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %191 = load i64, i64* %20, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8*, i8** %15, align 8
  %194 = call i32 @strcpy(i8* %192, i8* %193)
  %195 = load i8*, i8** %15, align 8
  %196 = call i32 @strlen(i8* %195)
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %20, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %20, align 8
  br label %201

201:                                              ; preds = %189, %177
  %202 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %203 = load i64, i64* %20, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 @strcpy(i8* %204, i8* %205)
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 @strlen(i8* %207)
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %20, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %20, align 8
  %213 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %214 = load i64, i64* %20, align 8
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  %216 = load i8*, i8** %16, align 8
  %217 = load i64, i64* %17, align 8
  %218 = call i32 @memcpy(i8* %215, i8* %216, i64 %217)
  %219 = load i8*, i8** %14, align 8
  %220 = load i32, i32* @O_RDONLY_, align 4
  %221 = call %struct.fd* @generic_open(i8* %219, i32 %220, i32 0)
  store %struct.fd* %221, %struct.fd** %21, align 8
  %222 = load %struct.fd*, %struct.fd** %21, align 8
  %223 = call i64 @IS_ERR(%struct.fd* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %201
  %226 = load %struct.fd*, %struct.fd** %21, align 8
  %227 = call i32 @PTR_ERR(%struct.fd* %226)
  store i32 %227, i32* %5, align 4
  br label %237

228:                                              ; preds = %201
  %229 = load %struct.fd*, %struct.fd** %21, align 8
  %230 = load i8*, i8** %14, align 8
  %231 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %232 = load i8*, i8** %9, align 8
  %233 = call i32 @format_exec(%struct.fd* %229, i8* %230, i8* %231, i8* %232)
  store i32 %233, i32* %22, align 4
  %234 = load %struct.fd*, %struct.fd** %21, align 8
  %235 = call i32 @fd_close(%struct.fd* %234)
  %236 = load i32, i32* %22, align 4
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %228, %225, %175, %89, %71, %55, %45, %32
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strings_size(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.fd* @generic_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fd*) #1

declare dso_local i32 @PTR_ERR(%struct.fd*) #1

declare dso_local i32 @format_exec(%struct.fd*, i8*, i8*, i8*) #1

declare dso_local i32 @fd_close(%struct.fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
