; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.drbd_connection*, i32, %struct.drbd_resource*, i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drbd_resource = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.drbd_connection* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.res_opts = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@C_STANDALONE = common dso_local global i32 0, align 4
@drbd_receiver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"receiver\00", align 1
@drbd_worker = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"worker\00", align 1
@drbd_ack_receiver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ack_recv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drbd_connection* @conn_create(i8* %0, %struct.res_opts* %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.res_opts*, align 8
  %6 = alloca %struct.drbd_resource*, align 8
  %7 = alloca %struct.drbd_connection*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.res_opts* %1, %struct.res_opts** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 136, i32 %8)
  %10 = bitcast i8* %9 to %struct.drbd_connection*
  store %struct.drbd_connection* %10, %struct.drbd_connection** %7, align 8
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %12 = icmp ne %struct.drbd_connection* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.drbd_connection* null, %struct.drbd_connection** %3, align 8
  br label %158

14:                                               ; preds = %2
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %16 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %15, i32 0, i32 1
  %17 = call i64 @drbd_alloc_socket(%struct.TYPE_7__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %145

20:                                               ; preds = %14
  %21 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %22 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %21, i32 0, i32 2
  %23 = call i64 @drbd_alloc_socket(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %145

26:                                               ; preds = %20
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 4, i32 %27)
  %29 = bitcast i8* %28 to %struct.drbd_connection*
  %30 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %31 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %30, i32 0, i32 3
  store %struct.drbd_connection* %29, %struct.drbd_connection** %31, align 8
  %32 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %33 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %32, i32 0, i32 3
  %34 = load %struct.drbd_connection*, %struct.drbd_connection** %33, align 8
  %35 = icmp ne %struct.drbd_connection* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %145

37:                                               ; preds = %26
  %38 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %39 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %38, i32 0, i32 18
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %42 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %41, i32 0, i32 3
  %43 = load %struct.drbd_connection*, %struct.drbd_connection** %42, align 8
  %44 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %43, i32 0, i32 17
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %47 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %49 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %48, i32 0, i32 16
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %52 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %55 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %54, i32 0, i32 15
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %58 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %57, i32 0, i32 15
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call %struct.drbd_resource* @drbd_create_resource(i8* %60)
  store %struct.drbd_resource* %61, %struct.drbd_resource** %6, align 8
  %62 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %63 = icmp ne %struct.drbd_resource* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %37
  br label %145

65:                                               ; preds = %37
  %66 = load i32, i32* @C_STANDALONE, align 4
  %67 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %68 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %67, i32 0, i32 14
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %70 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %69, i32 0, i32 13
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %73 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %72, i32 0, i32 12
  %74 = call i32 @init_waitqueue_head(i32* %73)
  %75 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %76 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %75, i32 0, i32 11
  %77 = call i32 @idr_init(i32* %76)
  %78 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %79 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %78, i32 0, i32 10
  %80 = call i32 @drbd_init_workqueue(i32* %79)
  %81 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %82 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %86 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %90 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %91 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %90, i32 0, i32 9
  %92 = load i32, i32* @drbd_receiver, align 4
  %93 = call i32 @drbd_thread_init(%struct.drbd_resource* %89, %struct.TYPE_6__* %91, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %95 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %96 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.drbd_connection* %94, %struct.drbd_connection** %97, align 8
  %98 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %99 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %100 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %99, i32 0, i32 8
  %101 = load i32, i32* @drbd_worker, align 4
  %102 = call i32 @drbd_thread_init(%struct.drbd_resource* %98, %struct.TYPE_6__* %100, i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %104 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %105 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store %struct.drbd_connection* %103, %struct.drbd_connection** %106, align 8
  %107 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %108 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %109 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %108, i32 0, i32 7
  %110 = load i32, i32* @drbd_ack_receiver, align 4
  %111 = call i32 @drbd_thread_init(%struct.drbd_resource* %107, %struct.TYPE_6__* %109, i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %113 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %114 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store %struct.drbd_connection* %112, %struct.drbd_connection** %115, align 8
  %116 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %117 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %116, i32 0, i32 6
  %118 = call i32 @kref_init(i32* %117)
  %119 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %120 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %121 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %120, i32 0, i32 5
  store %struct.drbd_resource* %119, %struct.drbd_resource** %121, align 8
  %122 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %123 = load %struct.res_opts*, %struct.res_opts** %5, align 8
  %124 = call i64 @set_resource_options(%struct.drbd_resource* %122, %struct.res_opts* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %65
  br label %139

127:                                              ; preds = %65
  %128 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %129 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %128, i32 0, i32 2
  %130 = call i32 @kref_get(i32* %129)
  %131 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %132 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %131, i32 0, i32 4
  %133 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %134 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %133, i32 0, i32 1
  %135 = call i32 @list_add_tail_rcu(i32* %132, i32* %134)
  %136 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %137 = call i32 @drbd_debugfs_connection_add(%struct.drbd_connection* %136)
  %138 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  store %struct.drbd_connection* %138, %struct.drbd_connection** %3, align 8
  br label %158

139:                                              ; preds = %126
  %140 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %141 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %140, i32 0, i32 0
  %142 = call i32 @list_del(i32* %141)
  %143 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %144 = call i32 @drbd_free_resource(%struct.drbd_resource* %143)
  br label %145

145:                                              ; preds = %139, %64, %36, %25, %19
  %146 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %147 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %146, i32 0, i32 3
  %148 = load %struct.drbd_connection*, %struct.drbd_connection** %147, align 8
  %149 = call i32 @kfree(%struct.drbd_connection* %148)
  %150 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %151 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %150, i32 0, i32 2
  %152 = call i32 @drbd_free_socket(%struct.TYPE_7__* %151)
  %153 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %154 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %153, i32 0, i32 1
  %155 = call i32 @drbd_free_socket(%struct.TYPE_7__* %154)
  %156 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %157 = call i32 @kfree(%struct.drbd_connection* %156)
  store %struct.drbd_connection* null, %struct.drbd_connection** %3, align 8
  br label %158

158:                                              ; preds = %145, %127, %13
  %159 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  ret %struct.drbd_connection* %159
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @drbd_alloc_socket(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.drbd_resource* @drbd_create_resource(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @drbd_init_workqueue(i32*) #1

declare dso_local i32 @drbd_thread_init(%struct.drbd_resource*, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @set_resource_options(%struct.drbd_resource*, %struct.res_opts*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @drbd_debugfs_connection_add(%struct.drbd_connection*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @drbd_free_resource(%struct.drbd_resource*) #1

declare dso_local i32 @kfree(%struct.drbd_connection*) #1

declare dso_local i32 @drbd_free_socket(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
