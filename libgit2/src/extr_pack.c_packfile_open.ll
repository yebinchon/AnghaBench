; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_packfile_open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_packfile_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i32, i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.stat = type { i64, i32 }
%struct.git_pack_header = type { i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.git_pack_header* }

@.str = private unnamed_addr constant [24 x i8] c"failed to open packfile\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get lock for open\00", align 1
@PACK_SIGNATURE = common dso_local global i32 0, align 4
@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid packfile '%s'\00", align 1
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@fd_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_file*)* @packfile_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packfile_open(%struct.git_pack_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.git_pack_file*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.git_pack_header, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i8*, align 8
  store %struct.git_pack_file* %0, %struct.git_pack_file** %3, align 8
  %8 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %9 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %14 = call i64 @pack_index_open(%struct.git_pack_file* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %17, i32* %2, align 4
  br label %189

18:                                               ; preds = %12, %1
  %19 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %20 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %19, i32 0, i32 3
  %21 = call i64 @git_mutex_lock(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @packfile_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %189

25:                                               ; preds = %18
  %26 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %27 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %33 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %32, i32 0, i32 3
  %34 = call i32 @git_mutex_unlock(i32* %33)
  store i32 0, i32* %2, align 4
  br label %189

35:                                               ; preds = %25
  %36 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %37 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @git_futils_open_ro(i32 %38)
  %40 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %41 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %44 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %165

49:                                               ; preds = %35
  %50 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %51 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @p_fstat(i32 %53, %struct.stat* %4)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %58 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %57, i32 0, i32 4
  %59 = call i64 @git_mwindow_file_register(%struct.TYPE_8__* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %49
  br label %165

62:                                               ; preds = %56
  %63 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %64 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @S_ISREG(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %165

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %78 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  br label %90

80:                                               ; preds = %62
  %81 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %82 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %165

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %92 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @p_read(i32 %94, %struct.git_pack_header* %5, i32 16)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.git_pack_header, %struct.git_pack_header* %5, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @PACK_SIGNATURE, align 4
  %101 = call i64 @htonl(i32 %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.git_pack_header, %struct.git_pack_header* %5, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pack_version_ok(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103, %97, %90
  br label %165

109:                                              ; preds = %103
  %110 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %111 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.git_pack_header, %struct.git_pack_header* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @ntohl(i32 %114)
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %142, label %117

117:                                              ; preds = %109
  %118 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %119 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %123 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %125, %127
  %129 = load i32, i32* @SEEK_SET, align 4
  %130 = call i32 @p_lseek(i32 %121, i64 %128, i32 %129)
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %142, label %132

132:                                              ; preds = %117
  %133 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %134 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %138 = load %struct.git_pack_header*, %struct.git_pack_header** %137, align 8
  %139 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %140 = call i64 @p_read(i32 %136, %struct.git_pack_header* %138, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132, %117, %109
  br label %165

143:                                              ; preds = %132
  %144 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %145 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %150 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  %155 = getelementptr inbounds i8, i8* %154, i64 -40
  store i8* %155, i8** %7, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = bitcast i8* %156 to %struct.TYPE_7__*
  %158 = call i64 @git_oid__cmp(%struct.TYPE_7__* %6, %struct.TYPE_7__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  br label %165

161:                                              ; preds = %143
  %162 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %163 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %162, i32 0, i32 3
  %164 = call i32 @git_mutex_unlock(i32* %163)
  store i32 0, i32* %2, align 4
  br label %189

165:                                              ; preds = %160, %142, %108, %88, %73, %61, %48
  %166 = load i32, i32* @GIT_ERROR_OS, align 4
  %167 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %168 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @git_error_set(i32 %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  %171 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %172 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %165
  %177 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %178 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @p_close(i32 %180)
  br label %182

182:                                              ; preds = %176, %165
  %183 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %184 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store i32 -1, i32* %185, align 8
  %186 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %187 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %186, i32 0, i32 3
  %188 = call i32 @git_mutex_unlock(i32* %187)
  store i32 -1, i32* %2, align 4
  br label %189

189:                                              ; preds = %182, %161, %31, %23, %16
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i64 @pack_index_open(%struct.git_pack_file*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

declare dso_local i64 @git_mutex_lock(i32*) #1

declare dso_local i32 @packfile_error(i8*) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

declare dso_local i32 @git_futils_open_ro(i32) #1

declare dso_local i64 @p_fstat(i32, %struct.stat*) #1

declare dso_local i64 @git_mwindow_file_register(%struct.TYPE_8__*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @p_read(i32, %struct.git_pack_header*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @pack_version_ok(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @p_lseek(i32, i64, i32) #1

declare dso_local i64 @git_oid__cmp(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @p_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
