; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_unix_socket_get.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_unix_socket_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fs_info* }
%struct.fs_info = type { i32, i32 }
%struct.fd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.inode_data* }
%struct.inode_data = type { i64, i32 }
%struct.mount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mount*, i8*, %struct.statbuf*, i32)*, i32 (%struct.mount*, i8*, i32, i32)* }
%struct.statbuf = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@AT_PWD = common dso_local global i32 0, align 4
@N_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@_EADDRINUSE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@S_IFSOCK = common dso_local global i32 0, align 4
@_ENOTSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fd*, i64*)* @unix_socket_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_socket_get(i8* %0, %struct.fd* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.statbuf, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fs_info*, align 8
  %16 = alloca %struct.inode_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.fd* %1, %struct.fd** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @AT_PWD, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @N_SYMLINK_FOLLOW, align 4
  %24 = call i32 @path_normalize(i32 %21, i8* %22, i8* %20, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %145

29:                                               ; preds = %3
  %30 = call %struct.mount* @find_mount_and_trim_path(i8* %20)
  store %struct.mount* %30, %struct.mount** %12, align 8
  %31 = load %struct.mount*, %struct.mount** %12, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.mount*, i8*, %struct.statbuf*, i32)*, i32 (%struct.mount*, i8*, %struct.statbuf*, i32)** %34, align 8
  %36 = load %struct.mount*, %struct.mount** %12, align 8
  %37 = call i32 %35(%struct.mount* %36, i8* %20, %struct.statbuf* %13, i32 1)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.fd*, %struct.fd** %6, align 8
  %39 = icmp ne %struct.fd* %38, null
  br i1 %39, label %40, label %90

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @_EADDRINUSE, align 4
  store i32 %44, i32* %10, align 4
  br label %141

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  store i32 511, i32* %14, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.fs_info*, %struct.fs_info** %50, align 8
  store %struct.fs_info* %51, %struct.fs_info** %15, align 8
  %52 = load %struct.fs_info*, %struct.fs_info** %15, align 8
  %53 = getelementptr inbounds %struct.fs_info, %struct.fs_info* %52, i32 0, i32 1
  %54 = call i32 @lock(i32* %53)
  %55 = load %struct.fs_info*, %struct.fs_info** %15, align 8
  %56 = getelementptr inbounds %struct.fs_info, %struct.fs_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %14, align 4
  %61 = load %struct.fs_info*, %struct.fs_info** %15, align 8
  %62 = getelementptr inbounds %struct.fs_info, %struct.fs_info* %61, i32 0, i32 1
  %63 = call i32 @unlock(i32* %62)
  %64 = load %struct.mount*, %struct.mount** %12, align 8
  %65 = getelementptr inbounds %struct.mount, %struct.mount* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32 (%struct.mount*, i8*, i32, i32)*, i32 (%struct.mount*, i8*, i32, i32)** %67, align 8
  %69 = load %struct.mount*, %struct.mount** %12, align 8
  %70 = load i32, i32* @S_IFSOCK, align 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %70, %71
  %73 = call i32 %68(%struct.mount* %69, i8* %20, i32 %72, i32 0)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %48
  br label %141

77:                                               ; preds = %48
  %78 = load %struct.mount*, %struct.mount** %12, align 8
  %79 = getelementptr inbounds %struct.mount, %struct.mount* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.mount*, i8*, %struct.statbuf*, i32)*, i32 (%struct.mount*, i8*, %struct.statbuf*, i32)** %81, align 8
  %83 = load %struct.mount*, %struct.mount** %12, align 8
  %84 = call i32 %82(%struct.mount* %83, i8* %20, %struct.statbuf* %13, i32 1)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %141

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %45
  br label %90

90:                                               ; preds = %89, %29
  %91 = load %struct.fd*, %struct.fd** %6, align 8
  %92 = icmp eq %struct.fd* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %141

97:                                               ; preds = %93, %90
  %98 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %13, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @S_ISSOCK(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @_ENOTSOCK, align 4
  store i32 %103, i32* %10, align 4
  br label %141

104:                                              ; preds = %97
  %105 = load %struct.mount*, %struct.mount** %12, align 8
  %106 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.inode_data* @inode_get(%struct.mount* %105, i32 %107)
  store %struct.inode_data* %108, %struct.inode_data** %16, align 8
  %109 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %110 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %109, i32 0, i32 1
  %111 = call i32 @lock(i32* %110)
  %112 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %113 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %104
  %117 = call i64 (...) @unix_socket_next_id()
  %118 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %119 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %104
  %121 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %122 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %121, i32 0, i32 1
  %123 = call i32 @unlock(i32* %122)
  %124 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %125 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %7, align 8
  store i64 %126, i64* %127, align 8
  %128 = load %struct.mount*, %struct.mount** %12, align 8
  %129 = call i32 @mount_release(%struct.mount* %128)
  %130 = load %struct.fd*, %struct.fd** %6, align 8
  %131 = icmp ne %struct.fd* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %134 = load %struct.fd*, %struct.fd** %6, align 8
  %135 = getelementptr inbounds %struct.fd, %struct.fd* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store %struct.inode_data* %133, %struct.inode_data** %136, align 8
  br label %140

137:                                              ; preds = %120
  %138 = load %struct.inode_data*, %struct.inode_data** %16, align 8
  %139 = call i32 @inode_release(%struct.inode_data* %138)
  br label %140

140:                                              ; preds = %137, %132
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %145

141:                                              ; preds = %102, %96, %87, %76, %43
  %142 = load %struct.mount*, %struct.mount** %12, align 8
  %143 = call i32 @mount_release(%struct.mount* %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %141, %140, %27
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_normalize(i32, i8*, i8*, i32) #2

declare dso_local %struct.mount* @find_mount_and_trim_path(i8*) #2

declare dso_local i32 @lock(i32*) #2

declare dso_local i32 @unlock(i32*) #2

declare dso_local i32 @S_ISSOCK(i32) #2

declare dso_local %struct.inode_data* @inode_get(%struct.mount*, i32) #2

declare dso_local i64 @unix_socket_next_id(...) #2

declare dso_local i32 @mount_release(%struct.mount*) #2

declare dso_local i32 @inode_release(%struct.inode_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
