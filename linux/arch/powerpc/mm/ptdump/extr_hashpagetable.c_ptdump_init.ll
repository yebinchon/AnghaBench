; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_ptdump_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_ptdump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"kernel_hash_pagetable\00", align 1
@ptdump_fops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ptdump_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptdump_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dentry*, align 8
  %3 = call i32 (...) @radix_enabled()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @populate_markers()
  %7 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 256, i32* null, i32* null, i32* @ptdump_fops)
  store %struct.dentry* %7, %struct.dentry** %2, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ 0, %10 ], [ %13, %11 ]
  store i32 %15, i32* %1, align 4
  br label %17

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @populate_markers(...) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
