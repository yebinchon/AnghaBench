; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_send_command.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.iovec = type { i8*, i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@YRMCDS_SYSTEM_ERROR = common dso_local global i32 0, align 4
@HEADER_SIZE = common dso_local global i32 0, align 4
@YRMCDS_OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32*, i64, i8*, i64, i8*)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(%struct.TYPE_3__* %0, i64 %1, i32* %2, i64 %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca [3 x %struct.iovec], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %7
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @UINT32_MAX, align 8
  %30 = load i64, i64* %14, align 8
  %31 = sub i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %15, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %36, %27, %7
  %46 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %46, i32* %8, align 4
  br label %199

47:                                               ; preds = %42, %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @pthread_mutex_lock(i32* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* @errno, align 4
  %55 = load i32, i32* @YRMCDS_SYSTEM_ERROR, align 4
  store i32 %55, i32* %8, align 4
  br label %199

56:                                               ; preds = %47
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i32, i32* @HEADER_SIZE, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %17, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 -112, i8* %73, align 16
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %75, i8* %76, align 1
  %77 = getelementptr inbounds i8, i8* %72, i64 2
  store i8 0, i8* %77, align 2
  %78 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 0, i8* %78, align 1
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %14, align 8
  %81 = add i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds i8, i8* %72, i64 4
  %84 = call i32 @hton32(i32 %82, i8* %83)
  %85 = getelementptr inbounds i8, i8* %72, i64 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = call i32 @memcpy(i8* %85, i32* %87, i32 4)
  %89 = load i32, i32* @YRMCDS_OK, align 4
  store i32 %89, i32* %19, align 4
  store i64 1, i64* %21, align 8
  %90 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 0
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 0
  store i8* %72, i8** %91, align 16
  %92 = load i32, i32* @HEADER_SIZE, align 4
  %93 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 0
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %68
  %98 = load i8*, i8** %13, align 8
  %99 = load i64, i64* %21, align 8
  %100 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.iovec, %struct.iovec* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 16
  %102 = load i64, i64* %12, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %21, align 8
  %105 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.iovec, %struct.iovec* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load i64, i64* %21, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %21, align 8
  br label %109

109:                                              ; preds = %97, %68
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i8*, i8** %15, align 8
  %114 = load i64, i64* %21, align 8
  %115 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.iovec, %struct.iovec* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 16
  %117 = load i64, i64* %14, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i64, i64* %21, align 8
  %120 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.iovec, %struct.iovec* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 8
  %122 = load i64, i64* %21, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %21, align 8
  br label %124

124:                                              ; preds = %112, %109
  store i64 0, i64* %22, align 8
  br label %125

125:                                              ; preds = %192, %149, %124
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %21, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %193

129:                                              ; preds = %125
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 0
  %134 = load i64, i64* %22, align 8
  %135 = getelementptr inbounds %struct.iovec, %struct.iovec* %133, i64 %134
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* %22, align 8
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @writev(i32 %132, %struct.iovec* %135, i32 %139)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %24, align 8
  %143 = load i32, i32* %23, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %152

145:                                              ; preds = %129
  %146 = load i32, i32* @errno, align 4
  %147 = load i32, i32* @EINTR, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %125

150:                                              ; preds = %145
  %151 = load i32, i32* @YRMCDS_SYSTEM_ERROR, align 4
  store i32 %151, i32* %19, align 4
  br label %193

152:                                              ; preds = %129
  br label %153

153:                                              ; preds = %182, %152
  %154 = load i64, i64* %24, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %153
  %157 = load i64, i64* %24, align 8
  %158 = load i64, i64* %22, align 8
  %159 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.iovec, %struct.iovec* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = icmp ult i64 %157, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %156
  %165 = load i64, i64* %22, align 8
  %166 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.iovec, %struct.iovec* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 16
  %169 = load i64, i64* %24, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = load i64, i64* %22, align 8
  %172 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.iovec, %struct.iovec* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 16
  %174 = load i64, i64* %24, align 8
  %175 = load i64, i64* %22, align 8
  %176 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.iovec, %struct.iovec* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = sub i64 %179, %174
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 8
  br label %192

182:                                              ; preds = %156
  %183 = load i64, i64* %22, align 8
  %184 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %20, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.iovec, %struct.iovec* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %24, align 8
  %189 = sub i64 %188, %187
  store i64 %189, i64* %24, align 8
  %190 = load i64, i64* %22, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %22, align 8
  br label %153

192:                                              ; preds = %164, %153
  br label %125

193:                                              ; preds = %150, %125
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = call i32 @pthread_mutex_unlock(i32* %195)
  %197 = load i32, i32* %19, align 4
  store i32 %197, i32* %8, align 4
  %198 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %198)
  br label %199

199:                                              ; preds = %193, %53, %45
  %200 = load i32, i32* %8, align 4
  ret i32 %200
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @hton32(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
