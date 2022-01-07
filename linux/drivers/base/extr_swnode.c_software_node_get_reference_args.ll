; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_get_reference_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_software_node_get_reference_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { i32, i32*, i32 }
%struct.swnode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.software_node_reference* }
%struct.software_node_reference = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.property_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NR_FWNODE_REFERENCE_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @software_node_get_reference_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @software_node_get_reference_args(%struct.fwnode_handle* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.fwnode_reference_args* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fwnode_reference_args*, align 8
  %14 = alloca %struct.swnode*, align 8
  %15 = alloca %struct.software_node_reference*, align 8
  %16 = alloca %struct.property_entry*, align 8
  %17 = alloca %struct.fwnode_handle*, align 8
  %18 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fwnode_reference_args* %5, %struct.fwnode_reference_args** %13, align 8
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %20 = call %struct.swnode* @to_swnode(%struct.fwnode_handle* %19)
  store %struct.swnode* %20, %struct.swnode** %14, align 8
  %21 = load %struct.swnode*, %struct.swnode** %14, align 8
  %22 = icmp ne %struct.swnode* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load %struct.swnode*, %struct.swnode** %14, align 8
  %25 = getelementptr inbounds %struct.swnode, %struct.swnode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.software_node_reference*, %struct.software_node_reference** %27, align 8
  %29 = icmp ne %struct.software_node_reference* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %6
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %149

33:                                               ; preds = %23
  %34 = load %struct.swnode*, %struct.swnode** %14, align 8
  %35 = getelementptr inbounds %struct.swnode, %struct.swnode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.software_node_reference*, %struct.software_node_reference** %37, align 8
  store %struct.software_node_reference* %38, %struct.software_node_reference** %15, align 8
  br label %39

39:                                               ; preds = %53, %33
  %40 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %41 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %46 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strcmp(i64 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %55 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %54, i32 1
  store %struct.software_node_reference* %55, %struct.software_node_reference** %15, align 8
  br label %39

56:                                               ; preds = %51, %39
  %57 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %58 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %64 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = icmp ugt i32 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %56
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %149

71:                                               ; preds = %61
  %72 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %73 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.fwnode_handle* @software_node_fwnode(i32 %79)
  store %struct.fwnode_handle* %80, %struct.fwnode_handle** %17, align 8
  %81 = load %struct.fwnode_handle*, %struct.fwnode_handle** %17, align 8
  %82 = icmp ne %struct.fwnode_handle* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %149

86:                                               ; preds = %71
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load %struct.swnode*, %struct.swnode** %14, align 8
  %91 = getelementptr inbounds %struct.swnode, %struct.swnode* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call %struct.property_entry* @property_entry_get(i32 %94, i8* %95)
  store %struct.property_entry* %96, %struct.property_entry** %16, align 8
  %97 = load %struct.property_entry*, %struct.property_entry** %16, align 8
  %98 = icmp ne %struct.property_entry* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %89
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %149

102:                                              ; preds = %89
  %103 = load %struct.property_entry*, %struct.property_entry** %16, align 8
  %104 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %102, %86
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @NR_FWNODE_REFERENCE_ARGS, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %149

114:                                              ; preds = %107
  %115 = load %struct.fwnode_handle*, %struct.fwnode_handle** %17, align 8
  %116 = call i32 @software_node_get(%struct.fwnode_handle* %115)
  %117 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %118 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %121 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %145, %114
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %122
  %127 = load %struct.software_node_reference*, %struct.software_node_reference** %15, align 8
  %128 = getelementptr inbounds %struct.software_node_reference, %struct.software_node_reference* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %140 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %126
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %122

148:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %111, %99, %83, %68, %30
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local %struct.swnode* @to_swnode(%struct.fwnode_handle*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local %struct.fwnode_handle* @software_node_fwnode(i32) #1

declare dso_local %struct.property_entry* @property_entry_get(i32, i8*) #1

declare dso_local i32 @software_node_get(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
