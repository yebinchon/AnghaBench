; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_fops_splice_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_fops_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i64 }
%struct.file = type { i32, %struct.port* }
%struct.port = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sg_list = type { i64, i64, i64, i32 }
%struct.port_buffer = type { i32 }
%struct.splice_desc = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.sg_list* }

@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pipe_to_sg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.file*, i32*, i64, i32)* @port_fops_splice_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fops_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.port*, align 8
  %13 = alloca %struct.sg_list, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.port_buffer*, align 8
  %16 = alloca %struct.splice_desc, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.port*, %struct.port** %18, align 8
  store %struct.port* %19, %struct.port** %12, align 8
  %20 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 1
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.sg_list* %13, %struct.sg_list** %25, align 8
  %26 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %16, i32 0, i32 3
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %26, align 8
  %29 = load %struct.port*, %struct.port** %12, align 8
  %30 = getelementptr inbounds %struct.port, %struct.port* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_rproc_serial(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %125

39:                                               ; preds = %5
  %40 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %41 = call i32 @pipe_lock(%struct.pipe_inode_info* %40)
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %43 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %121

47:                                               ; preds = %39
  %48 = load %struct.port*, %struct.port** %12, align 8
  %49 = load %struct.file*, %struct.file** %8, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @wait_port_writable(%struct.port* %48, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %121

58:                                               ; preds = %47
  %59 = load %struct.port*, %struct.port** %12, align 8
  %60 = getelementptr inbounds %struct.port, %struct.port* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %65 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.port_buffer* @alloc_buf(i32 %63, i32 0, i64 %66)
  store %struct.port_buffer* %67, %struct.port_buffer** %15, align 8
  %68 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %69 = icmp ne %struct.port_buffer* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %121

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %77 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 2
  store i64 %78, i64* %79, align 8
  %80 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %81 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 3
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @sg_init_table(i32 %85, i64 %87)
  %89 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %90 = load i32, i32* @pipe_to_sg, align 4
  %91 = call i32 @__splice_from_pipe(%struct.pipe_inode_info* %89, %struct.splice_desc* %16, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %93 = call i32 @pipe_unlock(%struct.pipe_inode_info* %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %73
  %100 = load %struct.port*, %struct.port** %12, align 8
  %101 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %102 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.sg_list, %struct.sg_list* %13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %109 = call i32 @__send_to_port(%struct.port* %100, i32 %103, i64 %105, i64 %107, %struct.port_buffer* %108, i32 1)
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %99, %73
  %111 = load i32, i32* %14, align 4
  %112 = icmp sle i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.port_buffer*, %struct.port_buffer** %15, align 8
  %118 = call i32 @free_buf(%struct.port_buffer* %117, i32 1)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %6, align 4
  br label %125

121:                                              ; preds = %70, %57, %46
  %122 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %123 = call i32 @pipe_unlock(%struct.pipe_inode_info* %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %119, %36
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i64 @is_rproc_serial(i32) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wait_port_writable(%struct.port*, i32) #1

declare dso_local %struct.port_buffer* @alloc_buf(i32, i32, i64) #1

declare dso_local i32 @sg_init_table(i32, i64) #1

declare dso_local i32 @__splice_from_pipe(%struct.pipe_inode_info*, %struct.splice_desc*, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__send_to_port(%struct.port*, i32, i64, i64, %struct.port_buffer*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_buf(%struct.port_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
