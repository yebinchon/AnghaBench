; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_getsockopt.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ucred_ }
%struct.ucred_ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"getsockopt(%d, %d, %d, %#x, %#x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@SOL_SOCKET_ = common dso_local global i32 0, align 4
@SO_DOMAIN_ = common dso_local global i32 0, align 4
@SO_TYPE_ = common dso_local global i32 0, align 4
@SO_PROTOCOL_ = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@SO_PEERCRED_ = common dso_local global i32 0, align 4
@peer_lock = common dso_local global i32 0, align 4
@AF_LOCAL_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getsockopt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ucred_*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @STRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.fd* @sock_getfd(i32 %28)
  store %struct.fd* %29, %struct.fd** %12, align 8
  %30 = load %struct.fd*, %struct.fd** %12, align 8
  %31 = icmp eq %struct.fd* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @_EBADF, align 4
  store i32 %33, i32* %6, align 4
  br label %201

34:                                               ; preds = %5
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @user_get(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @_EFAULT, align 4
  store i32 %40, i32* %6, align 4
  br label %201

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %14, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %15, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @user_read(i32 %46, i8* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @_EFAULT, align 4
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SOL_SOCKET_, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %108

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SO_DOMAIN_, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SO_TYPE_, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SO_PROTOCOL_, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %64, %60, %56
  %69 = bitcast i8* %45 to i32*
  store i32* %69, i32** %17, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @_EINVAL, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SO_DOMAIN_, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.fd*, %struct.fd** %12, align 8
  %81 = getelementptr inbounds %struct.fd, %struct.fd* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %17, align 8
  store i32 %83, i32* %84, align 4
  br label %107

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @SO_TYPE_, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.fd*, %struct.fd** %12, align 8
  %91 = getelementptr inbounds %struct.fd, %struct.fd* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %17, align 8
  store i32 %93, i32* %94, align 4
  br label %106

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SO_PROTOCOL_, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.fd*, %struct.fd** %12, align 8
  %101 = getelementptr inbounds %struct.fd, %struct.fd* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %17, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %95
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %79
  br label %185

108:                                              ; preds = %64, %52
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @SOL_SOCKET_, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %157

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SO_PEERCRED_, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %157

116:                                              ; preds = %112
  %117 = bitcast i8* %45 to %struct.ucred_*
  store %struct.ucred_* %117, %struct.ucred_** %18, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, 16
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @_EINVAL, align 4
  store i32 %122, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

123:                                              ; preds = %116
  %124 = call i32 @lock(i32* @peer_lock)
  %125 = load %struct.fd*, %struct.fd** %12, align 8
  %126 = getelementptr inbounds %struct.fd, %struct.fd* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @AF_LOCAL_, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %123
  %133 = load %struct.fd*, %struct.fd** %12, align 8
  %134 = getelementptr inbounds %struct.fd, %struct.fd* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = icmp eq %struct.TYPE_5__* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %132, %123
  %139 = load %struct.ucred_*, %struct.ucred_** %18, align 8
  %140 = getelementptr inbounds %struct.ucred_, %struct.ucred_* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load %struct.ucred_*, %struct.ucred_** %18, align 8
  %142 = getelementptr inbounds %struct.ucred_, %struct.ucred_* %141, i32 0, i32 1
  store i32 -1, i32* %142, align 4
  %143 = load %struct.ucred_*, %struct.ucred_** %18, align 8
  %144 = getelementptr inbounds %struct.ucred_, %struct.ucred_* %143, i32 0, i32 0
  store i32 -1, i32* %144, align 8
  br label %155

145:                                              ; preds = %132
  %146 = load %struct.ucred_*, %struct.ucred_** %18, align 8
  %147 = load %struct.fd*, %struct.fd** %12, align 8
  %148 = getelementptr inbounds %struct.fd, %struct.fd* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = bitcast %struct.ucred_* %146 to i8*
  %154 = bitcast %struct.ucred_* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 16, i1 false)
  br label %155

155:                                              ; preds = %145, %138
  %156 = call i32 @unlock(i32* @peer_lock)
  br label %184

157:                                              ; preds = %112, %108
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @sock_opt_to_real(i32 %158, i32 %159)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %19, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @_EINVAL, align 4
  store i32 %164, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

165:                                              ; preds = %157
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @sock_level_to_real(i32 %166)
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @_EINVAL, align 4
  store i32 %171, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

172:                                              ; preds = %165
  %173 = load %struct.fd*, %struct.fd** %12, align 8
  %174 = getelementptr inbounds %struct.fd, %struct.fd* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %19, align 4
  %178 = call i32 @getsockopt(i32 %175, i32 %176, i32 %177, i8* %45, i32* %13)
  store i32 %178, i32* %21, align 4
  %179 = load i32, i32* %21, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = call i32 (...) @errno_map()
  store i32 %182, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %155
  br label %185

185:                                              ; preds = %184, %107
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i64 (i32, ...) @user_put(i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @_EFAULT, align 4
  store i32 %191, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

192:                                              ; preds = %185
  %193 = load i32, i32* %10, align 4
  %194 = call i64 (i32, ...) @user_put(i32 %193, i8* %45)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @_EFAULT, align 4
  store i32 %197, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

198:                                              ; preds = %192
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %199

199:                                              ; preds = %198, %196, %190, %181, %170, %163, %121, %73, %50
  %200 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %200)
  br label %201

201:                                              ; preds = %199, %39, %32
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

declare dso_local i64 @user_get(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @user_read(i32, i8*, i32) #1

declare dso_local i32 @lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @sock_opt_to_real(i32, i32) #1

declare dso_local i32 @sock_level_to_real(i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @user_put(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
