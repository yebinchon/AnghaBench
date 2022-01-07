; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_http_load_post_impl.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_http_load_post_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, %struct.connection* }
%struct.connection = type { i64, i32, i32, i32, i64 }
%struct.pollfd = type { i32, i32 }

@ct_pipe = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_worker_http_load_post_impl(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.connection*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pollfd, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.connection*, %struct.connection** %23, align 8
  store %struct.connection* %24, %struct.connection** %10, align 8
  %25 = call double (...) @get_utime_monotonic()
  store double %25, double* %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load double, double* %11, align 8
  %30 = fadd double %29, 1.000000e-02
  %31 = fcmp olt double %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %177

33:                                               ; preds = %4
  %34 = load %struct.connection*, %struct.connection** %10, align 8
  %35 = icmp eq %struct.connection* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.connection*, %struct.connection** %10, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %33
  store i32 -1, i32* %5, align 4
  br label %177

42:                                               ; preds = %36
  %43 = load %struct.connection*, %struct.connection** %10, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.connection*, %struct.connection** %10, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ct_pipe, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  store i32 0, i32* %12, align 4
  %62 = load %struct.connection*, %struct.connection** %10, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 2
  %64 = call i32 @get_total_ready_bytes(i32* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %42
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.connection*, %struct.connection** %10, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 2
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @read_in(i32* %75, i8* %76, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %73, %42
  %87 = load %struct.connection*, %struct.connection** %10, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @POLLIN, align 4
  %92 = load i32, i32* @POLLPRI, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %174, %86
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %175

99:                                               ; preds = %95
  %100 = call double (...) @get_utime_monotonic()
  store double %100, double* %11, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load double, double* %102, align 8
  %104 = load double, double* %11, align 8
  %105 = fsub double %103, %104
  store double %105, double* %15, align 8
  %106 = load double, double* %15, align 8
  %107 = fcmp olt double %106, 2.000000e+06
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load double, double* %15, align 8
  %111 = fcmp olt double %110, 1.000000e-02
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  store i32 -1, i32* %5, align 4
  br label %177

113:                                              ; preds = %99
  %114 = load double, double* %15, align 8
  %115 = fmul double %114, 1.000000e+03
  %116 = fadd double %115, 1.000000e+00
  %117 = fptosi double %116 to i32
  %118 = call i32 @poll(%struct.pollfd* %14, i32 1, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* @errno, align 4
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %113
  %123 = load i32, i32* %16, align 4
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.connection*, %struct.connection** %10, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i32 @recv(i32 %129, i8* %133, i32 %136, i32 0)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* @errno, align 4
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %122
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %163

145:                                              ; preds = %122
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 -1, i32* %5, align 4
  br label %177

149:                                              ; preds = %145
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @EAGAIN, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @EWOULDBLOCK, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @EINTR, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %177

162:                                              ; preds = %157, %153, %149
  br label %163

163:                                              ; preds = %162, %141
  br label %174

164:                                              ; preds = %113
  %165 = load i32, i32* %16, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 -1, i32* %5, align 4
  br label %177

168:                                              ; preds = %164
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @EINTR, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 -1, i32* %5, align 4
  br label %177

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %163
  br label %95

175:                                              ; preds = %95
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %172, %167, %161, %148, %112, %41, %32
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @assert(i32) #1

declare dso_local double @get_utime_monotonic(...) #1

declare dso_local i32 @get_total_ready_bytes(i32*) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
