; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_send_shallow_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_send_shallow_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upload_pack_data = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.object_array = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"shallow-info\0A\00", align 1
@INFINITE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upload_pack_data*, %struct.object_array*)* @send_shallow_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_shallow_info(%struct.upload_pack_data* %0, %struct.object_array* %1) #0 {
  %3 = alloca %struct.upload_pack_data*, align 8
  %4 = alloca %struct.object_array*, align 8
  store %struct.upload_pack_data* %0, %struct.upload_pack_data** %3, align 8
  store %struct.object_array* %1, %struct.object_array** %4, align 8
  %5 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %6 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %11 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %16 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @the_repository, align 4
  %22 = call i64 @is_repository_shallow(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %67

25:                                               ; preds = %20, %14, %9, %2
  %26 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %27 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %26, i32 0, i32 2
  %28 = call i32 @packet_writer_write(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %30 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %29, i32 0, i32 2
  %31 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %32 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %35 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %38 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %41 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %40, i32 0, i32 3
  %42 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %43 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %46 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %45, i32 0, i32 0
  %47 = load %struct.object_array*, %struct.object_array** %4, align 8
  %48 = call i32 @send_shallow_list(i32* %30, i32 %33, i32 %36, i32 %39, i32* %41, i32 %44, %struct.TYPE_3__* %46, %struct.object_array* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %25
  %51 = load i32, i32* @the_repository, align 4
  %52 = call i64 @is_repository_shallow(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %56 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %55, i32 0, i32 2
  %57 = load i32, i32* @INFINITE_DEPTH, align 4
  %58 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %59 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.upload_pack_data*, %struct.upload_pack_data** %3, align 8
  %62 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %61, i32 0, i32 0
  %63 = load %struct.object_array*, %struct.object_array** %4, align 8
  %64 = call i32 @deepen(i32* %56, i32 %57, i32 %60, %struct.TYPE_3__* %62, %struct.object_array* %63)
  br label %65

65:                                               ; preds = %54, %50, %25
  %66 = call i32 @packet_delim(i32 1)
  br label %67

67:                                               ; preds = %65, %24
  ret void
}

declare dso_local i64 @is_repository_shallow(i32) #1

declare dso_local i32 @packet_writer_write(i32*, i8*) #1

declare dso_local i32 @send_shallow_list(i32*, i32, i32, i32, i32*, i32, %struct.TYPE_3__*, %struct.object_array*) #1

declare dso_local i32 @deepen(i32*, i32, i32, %struct.TYPE_3__*, %struct.object_array*) #1

declare dso_local i32 @packet_delim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
