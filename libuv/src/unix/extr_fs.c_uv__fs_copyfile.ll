; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__fs_copyfile.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__fs_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%struct.stat = type { i64, i64, i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@UV_FS_COPYFILE_EXCL = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@UV_FS_COPYFILE_FICLONE_FORCE = common dso_local global i32 0, align 4
@UV_ENOSYS = common dso_local global i32 0, align 4
@FICLONE = common dso_local global i32 0, align 4
@UV_FS_COPYFILE_FICLONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @uv__fs_copyfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uv__fs_copyfile(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i64 @uv_fs_open(i32* null, %struct.TYPE_7__* %4, i32 %17, i32 %18, i32 0, i32* null)
  store i64 %19, i64* %5, align 8
  %20 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* %4)
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %2, align 8
  br label %174

25:                                               ; preds = %1
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @fstat(i64 %26, %struct.stat* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @UV__ERR(i32 %30)
  store i32 %31, i32* %11, align 4
  br label %128

32:                                               ; preds = %25
  %33 = load i32, i32* @O_WRONLY, align 4
  %34 = load i32, i32* @O_CREAT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @O_TRUNC, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @UV_FS_COPYFILE_EXCL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @O_EXCL, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @uv_fs_open(i32* null, %struct.TYPE_7__* %4, i32 %51, i32 %52, i32 %54, i32* null)
  store i64 %55, i64* %6, align 8
  %56 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* %4)
  %57 = load i64, i64* %6, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  br label %128

62:                                               ; preds = %48
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @fstat(i64 %63, %struct.stat* %8)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @UV__ERR(i32 %67)
  store i32 %68, i32* %11, align 4
  br label %128

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %128

82:                                               ; preds = %75, %69
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @fchmod(i64 %83, i32 %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 @UV__ERR(i32 %89)
  store i32 %90, i32* %11, align 4
  br label %128

91:                                               ; preds = %82
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @UV_FS_COPYFILE_FICLONE_FORCE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %99, i32* %11, align 4
  br label %128

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %103

103:                                              ; preds = %120, %100
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @uv_fs_sendfile(i32* null, %struct.TYPE_7__* %4, i64 %107, i64 %108, i64 %109, i64 %110, i32* null)
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %14, align 8
  %114 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* %4)
  %115 = load i64, i64* %14, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i64, i64* %14, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %11, align 4
  br label %127

120:                                              ; preds = %106
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %12, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %13, align 8
  br label %103

127:                                              ; preds = %117, %103
  br label %128

128:                                              ; preds = %127, %98, %88, %81, %66, %59, %29
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %10, align 4
  br label %134

133:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %133, %131
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @uv__close_nocheckstdio(i64 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %142, %139, %134
  %145 = load i64, i64* %6, align 8
  %146 = icmp sge i64 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %144
  %148 = load i64, i64* %6, align 8
  %149 = call i32 @uv__close_nocheckstdio(i64 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %152, %147
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @uv_fs_unlink(i32* null, %struct.TYPE_7__* %4, i32 %163, i32* null)
  %165 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* %4)
  br label %166

166:                                              ; preds = %160, %157
  br label %167

167:                                              ; preds = %166, %144
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i64 0, i64* %2, align 8
  br label %174

171:                                              ; preds = %167
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @UV__ERR(i32 %172)
  store i32 %173, i32* @errno, align 4
  store i64 -1, i64* %2, align 8
  br label %174

174:                                              ; preds = %171, %170, %23
  %175 = load i64, i64* %2, align 8
  ret i64 %175
}

declare dso_local i64 @uv_fs_open(i32*, %struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_7__*) #1

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @fchmod(i64, i32) #1

declare dso_local i32 @uv_fs_sendfile(i32*, %struct.TYPE_7__*, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @uv__close_nocheckstdio(i64) #1

declare dso_local i32 @uv_fs_unlink(i32*, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
