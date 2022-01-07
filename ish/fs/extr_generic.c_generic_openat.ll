; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_openat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, i32, i32, %struct.mount* }
%struct.mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fd*, %struct.statbuf*)*, %struct.fd* (%struct.mount*, i8*, i32, i32)* }
%struct.statbuf = type { i32, i32, i32 }

@O_RDWR_ = common dso_local global i32 0, align 4
@O_WRONLY_ = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@N_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@O_CREAT_ = common dso_local global i32 0, align 4
@N_PARENT_DIR_WRITE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@AC_R = common dso_local global i32 0, align 4
@AC_W = common dso_local global i32 0, align 4
@DEV_BLOCK = common dso_local global i32 0, align 4
@DEV_CHAR = common dso_local global i32 0, align 4
@_ENXIO = common dso_local global i32 0, align 4
@_EISDIR = common dso_local global i32 0, align 4
@_ENOTDIR = common dso_local global i32 0, align 4
@O_DIRECTORY_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fd* @generic_openat(%struct.fd* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fd*, align 8
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.fd*, align 8
  %16 = alloca %struct.statbuf, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @O_RDWR_, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @O_WRONLY_, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @_EINVAL, align 4
  %30 = call %struct.fd* @ERR_PTR(i32 %29)
  store %struct.fd* %30, %struct.fd** %5, align 8
  br label %218

31:                                               ; preds = %23, %4
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %10, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %36 = load %struct.fd*, %struct.fd** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @N_SYMLINK_FOLLOW, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @O_CREAT_, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @N_PARENT_DIR_WRITE, align 4
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %38, %47
  %49 = call i32 @path_normalize(%struct.fd* %36, i8* %37, i8* %35, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.fd* @ERR_PTR(i32 %53)
  store %struct.fd* %54, %struct.fd** %5, align 8
  store i32 1, i32* %13, align 4
  br label %216

55:                                               ; preds = %46
  %56 = call %struct.mount* @find_mount_and_trim_path(i8* %35)
  store %struct.mount* %56, %struct.mount** %14, align 8
  %57 = load %struct.mount*, %struct.mount** %14, align 8
  %58 = getelementptr inbounds %struct.mount, %struct.mount* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.fd* (%struct.mount*, i8*, i32, i32)*, %struct.fd* (%struct.mount*, i8*, i32, i32)** %60, align 8
  %62 = load %struct.mount*, %struct.mount** %14, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.fd* %61(%struct.mount* %62, i8* %35, i32 %63, i32 %64)
  store %struct.fd* %65, %struct.fd** %15, align 8
  %66 = load %struct.fd*, %struct.fd** %15, align 8
  %67 = call i64 @IS_ERR(%struct.fd* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.mount*, %struct.mount** %14, align 8
  %71 = call i32 @mount_release(%struct.mount* %70)
  %72 = load %struct.fd*, %struct.fd** %15, align 8
  store %struct.fd* %72, %struct.fd** %5, align 8
  store i32 1, i32* %13, align 4
  br label %216

73:                                               ; preds = %55
  %74 = load %struct.mount*, %struct.mount** %14, align 8
  %75 = load %struct.fd*, %struct.fd** %15, align 8
  %76 = getelementptr inbounds %struct.fd, %struct.fd* %75, i32 0, i32 3
  store %struct.mount* %74, %struct.mount** %76, align 8
  %77 = load %struct.fd*, %struct.fd** %15, align 8
  %78 = getelementptr inbounds %struct.fd, %struct.fd* %77, i32 0, i32 3
  %79 = load %struct.mount*, %struct.mount** %78, align 8
  %80 = getelementptr inbounds %struct.mount, %struct.mount* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.fd*, %struct.statbuf*)*, i32 (%struct.fd*, %struct.statbuf*)** %82, align 8
  %84 = load %struct.fd*, %struct.fd** %15, align 8
  %85 = call i32 %83(%struct.fd* %84, %struct.statbuf* %16)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %211

89:                                               ; preds = %73
  %90 = load %struct.mount*, %struct.mount** %14, align 8
  %91 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %16, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @inode_get(%struct.mount* %90, i32 %92)
  %94 = load %struct.fd*, %struct.fd** %15, align 8
  %95 = getelementptr inbounds %struct.fd, %struct.fd* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @S_IFMT, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.fd*, %struct.fd** %15, align 8
  %101 = getelementptr inbounds %struct.fd, %struct.fd* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.fd*, %struct.fd** %15, align 8
  %104 = getelementptr inbounds %struct.fd, %struct.fd* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @O_RDWR_, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %89
  %110 = load i32, i32* @AC_R, align 4
  %111 = load i32, i32* @AC_W, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %17, align 4
  br label %123

113:                                              ; preds = %89
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @O_WRONLY_, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @AC_W, align 4
  store i32 %119, i32* %17, align 4
  br label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @AC_R, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %120, %118
  br label %123

123:                                              ; preds = %122, %109
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @access_check(%struct.statbuf* %16, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %211

129:                                              ; preds = %123
  %130 = load %struct.fd*, %struct.fd** %15, align 8
  %131 = getelementptr inbounds %struct.fd, %struct.fd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @S_ISLNK(i32 %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.fd*, %struct.fd** %15, align 8
  %139 = getelementptr inbounds %struct.fd, %struct.fd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @S_ISBLK(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %129
  %144 = load %struct.fd*, %struct.fd** %15, align 8
  %145 = getelementptr inbounds %struct.fd, %struct.fd* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @S_ISCHR(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %143, %129
  %150 = load %struct.fd*, %struct.fd** %15, align 8
  %151 = getelementptr inbounds %struct.fd, %struct.fd* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @S_ISBLK(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @DEV_BLOCK, align 4
  store i32 %156, i32* %18, align 4
  br label %159

157:                                              ; preds = %149
  %158 = load i32, i32* @DEV_CHAR, align 4
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %16, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dev_major(i32 %161)
  %163 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %16, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_minor(i32 %164)
  %166 = load i32, i32* %18, align 4
  %167 = load %struct.fd*, %struct.fd** %15, align 8
  %168 = call i32 @dev_open(i32 %162, i32 %165, i32 %166, %struct.fd* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  br label %211

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %143
  %174 = load i32, i32* @_ENXIO, align 4
  store i32 %174, i32* %12, align 4
  %175 = load %struct.fd*, %struct.fd** %15, align 8
  %176 = getelementptr inbounds %struct.fd, %struct.fd* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @S_ISSOCK(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %211

181:                                              ; preds = %173
  %182 = load i32, i32* @_EISDIR, align 4
  store i32 %182, i32* %12, align 4
  %183 = load %struct.fd*, %struct.fd** %15, align 8
  %184 = getelementptr inbounds %struct.fd, %struct.fd* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @S_ISDIR(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %181
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @O_RDWR_, align 4
  %191 = load i32, i32* @O_WRONLY_, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %189, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %211

196:                                              ; preds = %188, %181
  %197 = load i32, i32* @_ENOTDIR, align 4
  store i32 %197, i32* %12, align 4
  %198 = load %struct.fd*, %struct.fd** %15, align 8
  %199 = getelementptr inbounds %struct.fd, %struct.fd* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @S_ISDIR(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @O_DIRECTORY_, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %211

209:                                              ; preds = %203, %196
  %210 = load %struct.fd*, %struct.fd** %15, align 8
  store %struct.fd* %210, %struct.fd** %5, align 8
  store i32 1, i32* %13, align 4
  br label %216

211:                                              ; preds = %208, %195, %180, %171, %128, %88
  %212 = load %struct.fd*, %struct.fd** %15, align 8
  %213 = call i32 @fd_close(%struct.fd* %212)
  %214 = load i32, i32* %12, align 4
  %215 = call %struct.fd* @ERR_PTR(i32 %214)
  store %struct.fd* %215, %struct.fd** %5, align 8
  store i32 1, i32* %13, align 4
  br label %216

216:                                              ; preds = %211, %209, %69, %52
  %217 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %217)
  br label %218

218:                                              ; preds = %216, %28
  %219 = load %struct.fd*, %struct.fd** %5, align 8
  ret %struct.fd* %219
}

declare dso_local %struct.fd* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @path_normalize(%struct.fd*, i8*, i8*, i32) #1

declare dso_local %struct.mount* @find_mount_and_trim_path(i8*) #1

declare dso_local i64 @IS_ERR(%struct.fd*) #1

declare dso_local i32 @mount_release(%struct.mount*) #1

declare dso_local i32 @inode_get(%struct.mount*, i32) #1

declare dso_local i32 @access_check(%struct.statbuf*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @dev_open(i32, i32, i32, %struct.fd*) #1

declare dso_local i32 @dev_major(i32) #1

declare dso_local i32 @dev_minor(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fd_close(%struct.fd*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
