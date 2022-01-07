; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_get_refs_from_bundle.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_get_refs_from_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref*, i32 }
%struct.transport = type { i32, %struct.bundle_transport_data* }
%struct.bundle_transport_data = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ref_list_entry* }
%struct.ref_list_entry = type { i32, i32 }
%struct.argv_array = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"could not read bundle '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.transport*, i32, %struct.argv_array*)* @get_refs_from_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @get_refs_from_bundle(%struct.transport* %0, i32 %1, %struct.argv_array* %2) #0 {
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.argv_array*, align 8
  %8 = alloca %struct.bundle_transport_data*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ref_list_entry*, align 8
  %12 = alloca %struct.ref*, align 8
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.argv_array* %2, %struct.argv_array** %7, align 8
  %13 = load %struct.transport*, %struct.transport** %5, align 8
  %14 = getelementptr inbounds %struct.transport, %struct.transport* %13, i32 0, i32 1
  %15 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %14, align 8
  store %struct.bundle_transport_data* %15, %struct.bundle_transport_data** %8, align 8
  store %struct.ref* null, %struct.ref** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.ref* null, %struct.ref** %4, align 8
  br label %86

19:                                               ; preds = %3
  %20 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %21 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %23 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %28 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @close(i64 %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.transport*, %struct.transport** %5, align 8
  %33 = getelementptr inbounds %struct.transport, %struct.transport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %36 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %35, i32 0, i32 2
  %37 = call i64 @read_bundle_header(i32 %34, %struct.TYPE_4__* %36)
  %38 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %39 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %41 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.transport*, %struct.transport** %5, align 8
  %47 = getelementptr inbounds %struct.transport, %struct.transport* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @die(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %31
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %54 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %51
  %60 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %61 = getelementptr inbounds %struct.bundle_transport_data, %struct.bundle_transport_data* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.ref_list_entry*, %struct.ref_list_entry** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ref_list_entry, %struct.ref_list_entry* %64, i64 %66
  store %struct.ref_list_entry* %67, %struct.ref_list_entry** %11, align 8
  %68 = load %struct.ref_list_entry*, %struct.ref_list_entry** %11, align 8
  %69 = getelementptr inbounds %struct.ref_list_entry, %struct.ref_list_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.ref* @alloc_ref(i32 %70)
  store %struct.ref* %71, %struct.ref** %12, align 8
  %72 = load %struct.ref*, %struct.ref** %12, align 8
  %73 = getelementptr inbounds %struct.ref, %struct.ref* %72, i32 0, i32 1
  %74 = load %struct.ref_list_entry*, %struct.ref_list_entry** %11, align 8
  %75 = getelementptr inbounds %struct.ref_list_entry, %struct.ref_list_entry* %74, i32 0, i32 0
  %76 = call i32 @oidcpy(i32* %73, i32* %75)
  %77 = load %struct.ref*, %struct.ref** %9, align 8
  %78 = load %struct.ref*, %struct.ref** %12, align 8
  %79 = getelementptr inbounds %struct.ref, %struct.ref* %78, i32 0, i32 0
  store %struct.ref* %77, %struct.ref** %79, align 8
  %80 = load %struct.ref*, %struct.ref** %12, align 8
  store %struct.ref* %80, %struct.ref** %9, align 8
  br label %81

81:                                               ; preds = %59
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %51

84:                                               ; preds = %51
  %85 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %85, %struct.ref** %4, align 8
  br label %86

86:                                               ; preds = %84, %18
  %87 = load %struct.ref*, %struct.ref** %4, align 8
  ret %struct.ref* %87
}

declare dso_local i32 @close(i64) #1

declare dso_local i64 @read_bundle_header(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.ref* @alloc_ref(i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
