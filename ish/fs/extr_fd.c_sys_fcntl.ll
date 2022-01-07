; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_sys_fcntl.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_sys_fcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.fdtable* }
%struct.fdtable = type { i32 }
%struct.fd = type { i32 }
%struct.flock32_ = type { i32, i32, i32, i32, i32 }
%struct.flock_ = type { i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@_EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fcntl(%d, F_DUPFD, %d)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fcntl(%d, F_DUPFD_CLOEXEC, %d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_GETFD)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"fcntl(%d, F_SETFD, 0x%x)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_GETFL)\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"fcntl(%d, F_SETFL, %#x)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"fcntl(%d, F_GETLK, %#x)\00", align 1
@_EFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"fcntl(%d, F_GETLK64, %#x)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"fcntl(%d, F_SETLK%*s, %#x)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"fcntl(%d, F_SETLK%*s64, %#x)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"fcntl(%d, %d)\00", align 1
@_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fcntl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdtable*, align 8
  %9 = alloca %struct.fd*, align 8
  %10 = alloca %struct.flock32_, align 4
  %11 = alloca %struct.flock_, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.fdtable*, %struct.fdtable** %15, align 8
  store %struct.fdtable* %16, %struct.fdtable** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.fd* @f_get(i32 %17)
  store %struct.fd* %18, %struct.fd** %9, align 8
  %19 = load %struct.fd*, %struct.fd** %9, align 8
  %20 = icmp eq %struct.fd* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @_EBADF, align 4
  store i32 %22, i32* %4, align 4
  br label %228

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %223 [
    i32 139, label %25
    i32 138, label %36
    i32 137, label %53
    i32 133, label %61
    i32 136, label %81
    i32 132, label %86
    i32 134, label %93
    i32 135, label %148
    i32 128, label %171
    i32 129, label %171
    i32 131, label %205
    i32 130, label %205
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.fd*, %struct.fd** %9, align 8
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fd*, %struct.fd** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @f_install_start(%struct.fd* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %228

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.fd*, %struct.fd** %9, align 8
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.fd*, %struct.fd** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @f_install_start(%struct.fd* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %49 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bit_set(i32 %47, i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %228

53:                                               ; preds = %23
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %58 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bit_test(i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %228

61:                                               ; preds = %23
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %71 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bit_set(i32 %69, i32 %72)
  br label %80

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %77 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bit_clear(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %68
  store i32 0, i32* %4, align 4
  br label %228

81:                                               ; preds = %23
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.fd*, %struct.fd** %9, align 8
  %85 = call i32 @fd_getflags(%struct.fd* %84)
  store i32 %85, i32* %4, align 4
  br label %228

86:                                               ; preds = %23
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.fd*, %struct.fd** %9, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @fd_setflags(%struct.fd* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %228

93:                                               ; preds = %23
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = bitcast %struct.flock32_* %10 to %struct.flock_*
  %99 = call i32 @user_read(i32 %97, %struct.flock_* %98, i32 20)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @_EFAULT, align 4
  store i32 %102, i32* %4, align 4
  br label %228

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 2
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = load %struct.fd*, %struct.fd** %9, align 8
  %120 = call i32 @fcntl_getlk(%struct.fd* %119, %struct.flock_* %11)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %103
  %124 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 4
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = bitcast %struct.flock32_* %10 to %struct.flock_*
  %141 = call i32 @user_write(i32 %139, %struct.flock_* %140, i32 20)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %123
  %144 = load i32, i32* @_EFAULT, align 4
  store i32 %144, i32* %4, align 4
  br label %228

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145, %103
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %228

148:                                              ; preds = %23
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @user_read(i32 %152, %struct.flock_* %11, i32 20)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* @_EFAULT, align 4
  store i32 %156, i32* %4, align 4
  br label %228

157:                                              ; preds = %148
  %158 = load %struct.fd*, %struct.fd** %9, align 8
  %159 = call i32 @fcntl_getlk(%struct.fd* %158, %struct.flock_* %11)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @user_write(i32 %163, %struct.flock_* %11, i32 20)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @_EFAULT, align 4
  store i32 %167, i32* %4, align 4
  br label %228

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %157
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %4, align 4
  br label %228

171:                                              ; preds = %23, %23
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, 129
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %172, i32 %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %7, align 4
  %179 = bitcast %struct.flock32_* %10 to %struct.flock_*
  %180 = call i32 @user_read(i32 %178, %struct.flock_* %179, i32 20)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %171
  %183 = load i32, i32* @_EFAULT, align 4
  store i32 %183, i32* %4, align 4
  br label %228

184:                                              ; preds = %171
  %185 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 4
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 3
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 2
  store i32 %192, i32* %193, align 4
  %194 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = getelementptr inbounds %struct.flock32_, %struct.flock32_* %10, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 0
  store i32 %198, i32* %199, align 4
  %200 = load %struct.fd*, %struct.fd** %9, align 8
  %201 = load i32, i32* %6, align 4
  %202 = icmp eq i32 %201, 130
  %203 = zext i1 %202 to i32
  %204 = call i32 @fcntl_setlk(%struct.fd* %200, %struct.flock_* %11, i32 %203)
  store i32 %204, i32* %4, align 4
  br label %228

205:                                              ; preds = %23, %23
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp eq i32 %207, 129
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %7, align 4
  %211 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %206, i32 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @user_read(i32 %212, %struct.flock_* %11, i32 20)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %205
  %216 = load i32, i32* @_EFAULT, align 4
  store i32 %216, i32* %4, align 4
  br label %228

217:                                              ; preds = %205
  %218 = load %struct.fd*, %struct.fd** %9, align 8
  %219 = load i32, i32* %6, align 4
  %220 = icmp eq i32 %219, 129
  %221 = zext i1 %220 to i32
  %222 = call i32 @fcntl_setlk(%struct.fd* %218, %struct.flock_* %11, i32 %221)
  store i32 %222, i32* %4, align 4
  br label %228

223:                                              ; preds = %23
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %224, i32 %225)
  %227 = load i32, i32* @_EINVAL, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %223, %217, %215, %184, %182, %169, %166, %155, %146, %143, %101, %86, %81, %80, %53, %36, %25, %21
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @STRACE(i8*, i32, ...) #1

declare dso_local i32 @f_install_start(%struct.fd*, i32) #1

declare dso_local i32 @bit_set(i32, i32) #1

declare dso_local i32 @bit_test(i32, i32) #1

declare dso_local i32 @bit_clear(i32, i32) #1

declare dso_local i32 @fd_getflags(%struct.fd*) #1

declare dso_local i32 @fd_setflags(%struct.fd*, i32) #1

declare dso_local i32 @user_read(i32, %struct.flock_*, i32) #1

declare dso_local i32 @fcntl_getlk(%struct.fd*, %struct.flock_*) #1

declare dso_local i32 @user_write(i32, %struct.flock_*, i32) #1

declare dso_local i32 @fcntl_setlk(%struct.fd*, %struct.flock_*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
