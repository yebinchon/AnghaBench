; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }
%struct.file = type { i32 }
%struct.spu_gang = type { i32 }
%struct.spu_context = type { i32 }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }
%struct.TYPE_2__ = type { i32, %struct.spu_gang* }

@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SPU_CREATE_ISOLATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@isolated_loader = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SPU_CREATE_AFFINITY_MEM = common dso_local global i32 0, align 4
@SPU_CREATE_AFFINITY_SPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.vfsmount*, i32, i32, %struct.file*)* @spufs_create_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_create_context(%struct.inode* %0, %struct.dentry* %1, %struct.vfsmount* %2, i32 %3, i32 %4, %struct.file* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.spu_gang*, align 8
  %17 = alloca %struct.spu_context*, align 8
  %18 = alloca %struct.path, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.vfsmount* %2, %struct.vfsmount** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.file* %5, %struct.file** %13, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %20, %struct.dentry** %19, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %18, i32 0, i32 1
  %22 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* %22, %struct.vfsmount** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %6
  %28 = load i32, i32* @CAP_SYS_NICE, align 4
  %29 = call i32 @capable(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %136

34:                                               ; preds = %27, %6
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %37 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %136

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @isolated_loader, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %136

56:                                               ; preds = %50, %45
  store %struct.spu_gang* null, %struct.spu_gang** %16, align 8
  store %struct.spu_context* null, %struct.spu_context** %17, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @SPU_CREATE_AFFINITY_MEM, align 4
  %59 = load i32, i32* @SPU_CREATE_AFFINITY_SPU, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.spu_gang*, %struct.spu_gang** %67, align 8
  store %struct.spu_gang* %68, %struct.spu_gang** %16, align 8
  %69 = load %struct.spu_gang*, %struct.spu_gang** %16, align 8
  %70 = icmp ne %struct.spu_gang* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %136

74:                                               ; preds = %64
  %75 = load %struct.spu_gang*, %struct.spu_gang** %16, align 8
  %76 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %75, i32 0, i32 0
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.spu_gang*, %struct.spu_gang** %16, align 8
  %80 = load %struct.file*, %struct.file** %13, align 8
  %81 = call %struct.spu_context* @spufs_assert_affinity(i32 %78, %struct.spu_gang* %79, %struct.file* %80)
  store %struct.spu_context* %81, %struct.spu_context** %17, align 8
  %82 = load %struct.spu_context*, %struct.spu_context** %17, align 8
  %83 = call i64 @IS_ERR(%struct.spu_context* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.spu_context*, %struct.spu_context** %17, align 8
  %87 = call i32 @PTR_ERR(%struct.spu_context* %86)
  store i32 %87, i32* %14, align 4
  br label %127

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %56
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = load %struct.dentry*, %struct.dentry** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 511
  %95 = call i32 @spufs_mkdir(%struct.inode* %90, %struct.dentry* %91, i32 %92, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %127

99:                                               ; preds = %89
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.dentry*, %struct.dentry** %9, align 8
  %105 = call %struct.inode* @d_inode(%struct.dentry* %104)
  %106 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.spu_context*, %struct.spu_context** %17, align 8
  %110 = call i32 @spufs_set_affinity(i32 %103, i32 %108, %struct.spu_context* %109)
  %111 = load %struct.spu_context*, %struct.spu_context** %17, align 8
  %112 = icmp ne %struct.spu_context* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load %struct.spu_context*, %struct.spu_context** %17, align 8
  %115 = call i32 @put_spu_context(%struct.spu_context* %114)
  br label %116

116:                                              ; preds = %113, %102
  br label %117

117:                                              ; preds = %116, %99
  %118 = call i32 @spufs_context_open(%struct.path* %18)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = load %struct.dentry*, %struct.dentry** %9, align 8
  %124 = call i32 @spufs_rmdir(%struct.inode* %122, %struct.dentry* %123)
  %125 = call i32 @WARN_ON(i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %98, %85
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.spu_gang*, %struct.spu_gang** %16, align 8
  %132 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %134, %71, %53, %42, %31
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.TYPE_2__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.spu_context* @spufs_assert_affinity(i32, %struct.spu_gang*, %struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.spu_context*) #1

declare dso_local i32 @PTR_ERR(%struct.spu_context*) #1

declare dso_local i32 @spufs_mkdir(%struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @spufs_set_affinity(i32, i32, %struct.spu_context*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @put_spu_context(%struct.spu_context*) #1

declare dso_local i32 @spufs_context_open(%struct.path*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spufs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
