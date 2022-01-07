; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32*, i32 }
%struct.dentry = type { i32 }
%struct.spu_context = type { i32 }
%struct.TYPE_4__ = type { %struct.spu_context*, i32 }
%struct.TYPE_3__ = type { i64 }

@S_IFDIR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@spufs_dir_nosched_contents = common dso_local global i32 0, align 4
@spufs_dir_contents = common dso_local global i32 0, align 4
@spufs_dir_debug_contents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @spufs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.spu_context*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.inode* @spufs_new_inode(i32 %15, i32 %18)
  store %struct.inode* %19, %struct.inode** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %123

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @S_ISGID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @S_ISGID, align 4
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_4__* @SPUFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.spu_context* @alloc_spu_context(i32 %47)
  store %struct.spu_context* %48, %struct.spu_context** %12, align 8
  %49 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = call %struct.TYPE_4__* @SPUFS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.spu_context* %49, %struct.spu_context** %52, align 8
  %53 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %54 = icmp ne %struct.spu_context* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = call i32 @iput(%struct.inode* %56)
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %123

60:                                               ; preds = %43
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %63 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  store i32* @simple_dir_inode_operations, i32** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  store i32* @simple_dir_operations, i32** %67, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @inode_lock(%struct.inode* %68)
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = call i32 @dget(%struct.dentry* %70)
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @inc_nlink(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = call i32 @inc_nlink(%struct.inode* %74)
  %76 = load %struct.dentry*, %struct.dentry** %7, align 8
  %77 = load %struct.inode*, %struct.inode** %11, align 8
  %78 = call i32 @d_instantiate(%struct.dentry* %76, %struct.inode* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %60
  %84 = load %struct.dentry*, %struct.dentry** %7, align 8
  %85 = load i32, i32* @spufs_dir_nosched_contents, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %88 = call i32 @spufs_fill_dir(%struct.dentry* %84, i32 %85, i32 %86, %struct.spu_context* %87)
  store i32 %88, i32* %10, align 4
  br label %95

89:                                               ; preds = %60
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = load i32, i32* @spufs_dir_contents, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %94 = call i32 @spufs_fill_dir(%struct.dentry* %90, i32 %91, i32 %92, %struct.spu_context* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.TYPE_3__* @spufs_get_sb_info(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  %108 = load i32, i32* @spufs_dir_debug_contents, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %111 = call i32 @spufs_fill_dir(%struct.dentry* %107, i32 %108, i32 %109, %struct.spu_context* %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %98, %95
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = load %struct.dentry*, %struct.dentry** %7, align 8
  %118 = call i32 @spufs_rmdir(%struct.inode* %116, %struct.dentry* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load %struct.inode*, %struct.inode** %11, align 8
  %121 = call i32 @inode_unlock(%struct.inode* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %55, %22
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.inode* @spufs_new_inode(i32, i32) #1

declare dso_local %struct.spu_context* @alloc_spu_context(i32) #1

declare dso_local %struct.TYPE_4__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spufs_fill_dir(%struct.dentry*, i32, i32, %struct.spu_context*) #1

declare dso_local %struct.TYPE_3__* @spufs_get_sb_info(i32) #1

declare dso_local i32 @spufs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
