; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.super_block = type { i32, i32, i32, %struct.binderfs_info*, i32*, i32, i32, i32, i32 }
%struct.binderfs_info = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.inode = type { i32, i32*, i32, i32, i32, i32*, i32 }
%struct.binderfs_device = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SB_I_NODEV = common dso_local global i32 0, align 4
@SB_I_NOEXEC = common dso_local global i32 0, align 4
@BINDERFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@binderfs_super_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@FIRST_INODE = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@binderfs_dir_inode_operations = common dso_local global i32 0, align 4
@binder_devices_param = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@STATS_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @binderfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binderfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.binderfs_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.binderfs_device, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %14 = bitcast %struct.binderfs_device* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @SB_I_NODEV, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @SB_I_NOEXEC, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @BINDERFS_SUPER_MAGIC, align 4
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 4
  store i32* @binderfs_super_ops, i32** %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.binderfs_info* @kzalloc(i32 24, i32 %39)
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 3
  store %struct.binderfs_info* %40, %struct.binderfs_info** %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 3
  %45 = load %struct.binderfs_info*, %struct.binderfs_info** %44, align 8
  %46 = icmp ne %struct.binderfs_info* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %196

50:                                               ; preds = %3
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 3
  %53 = load %struct.binderfs_info*, %struct.binderfs_info** %52, align 8
  store %struct.binderfs_info* %53, %struct.binderfs_info** %9, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_ipc_ns(i32 %58)
  %60 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %61 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %64 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %63, i32 0, i32 0
  %65 = call i32 @binderfs_parse_mount_opts(i8* %62, %struct.TYPE_6__* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %196

70:                                               ; preds = %50
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @make_kgid(i32 %73, i32 0)
  %75 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %76 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %78 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gid_valid(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %84 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %85 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %70
  %87 = load %struct.super_block*, %struct.super_block** %5, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @make_kuid(i32 %89, i32 0)
  %91 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %92 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %94 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @uid_valid(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %100 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %101 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %86
  %103 = load %struct.super_block*, %struct.super_block** %5, align 8
  %104 = call %struct.inode* @new_inode(%struct.super_block* %103)
  store %struct.inode* %104, %struct.inode** %10, align 8
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %196

110:                                              ; preds = %102
  %111 = load i32, i32* @FIRST_INODE, align 4
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 5
  store i32* @simple_dir_operations, i32** %115, align 8
  %116 = load i32, i32* @S_IFDIR, align 4
  %117 = or i32 %116, 493
  %118 = load %struct.inode*, %struct.inode** %10, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = call i32 @current_time(%struct.inode* %120)
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 4
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 4
  store i32 %121, i32* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  store i32* @binderfs_dir_inode_operations, i32** %129, align 8
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call i32 @set_nlink(%struct.inode* %130, i32 2)
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = call i32 @d_make_root(%struct.inode* %132)
  %134 = load %struct.super_block*, %struct.super_block** %5, align 8
  %135 = getelementptr inbounds %struct.super_block, %struct.super_block* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = getelementptr inbounds %struct.super_block, %struct.super_block* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %110
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %196

143:                                              ; preds = %110
  %144 = load %struct.super_block*, %struct.super_block** %5, align 8
  %145 = call i32 @binderfs_binder_ctl_create(%struct.super_block* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  br label %196

150:                                              ; preds = %143
  %151 = load i8*, i8** @binder_devices_param, align 8
  store i8* %151, i8** %12, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call i64 @strcspn(i8* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %153, i64* %13, align 8
  br label %154

154:                                              ; preds = %182, %150
  %155 = load i64, i64* %13, align 8
  %156 = icmp ugt i64 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %11, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = add i64 %161, 1
  %163 = call i32 @strscpy(i32 %159, i8* %160, i64 %162)
  %164 = load %struct.inode*, %struct.inode** %10, align 8
  %165 = call i32 @binderfs_binder_device_create(%struct.inode* %164, i32* null, %struct.binderfs_device* %11)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %4, align 4
  br label %196

170:                                              ; preds = %157
  %171 = load i64, i64* %13, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %12, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 44
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i8*, i8** %12, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %12, align 8
  br label %181

181:                                              ; preds = %178, %170
  br label %182

182:                                              ; preds = %181
  %183 = load i8*, i8** %12, align 8
  %184 = call i64 @strcspn(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %184, i64* %13, align 8
  br label %154

185:                                              ; preds = %154
  %186 = load %struct.binderfs_info*, %struct.binderfs_info** %9, align 8
  %187 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @STATS_GLOBAL, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load %struct.super_block*, %struct.super_block** %5, align 8
  %194 = call i32 @init_binder_logs(%struct.super_block* %193)
  store i32 %194, i32* %4, align 4
  br label %196

195:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %195, %192, %168, %148, %140, %107, %68, %47
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.binderfs_info* @kzalloc(i32, i32) #2

declare dso_local i32 @get_ipc_ns(i32) #2

declare dso_local i32 @binderfs_parse_mount_opts(i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #2

declare dso_local i32 @current_time(%struct.inode*) #2

declare dso_local i32 @set_nlink(%struct.inode*, i32) #2

declare dso_local i32 @d_make_root(%struct.inode*) #2

declare dso_local i32 @binderfs_binder_ctl_create(%struct.super_block*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @strscpy(i32, i8*, i64) #2

declare dso_local i32 @binderfs_binder_device_create(%struct.inode*, i32*, %struct.binderfs_device*) #2

declare dso_local i32 @init_binder_logs(%struct.super_block*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
