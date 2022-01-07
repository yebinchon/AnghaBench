; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-property.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-property.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"my_defined_property\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @TEST_INIT()
  %8 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %9 = call i32 @jerry_init(i32 %8)
  %10 = call i32 @jerry_init_property_descriptor_fields(%struct.TYPE_6__* %2)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @TEST_ASSERT(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @jerry_value_is_undefined(i32 %17)
  %19 = call i32 @TEST_ASSERT(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @TEST_ASSERT(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST_ASSERT(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @jerry_value_is_undefined(i32 %56)
  %58 = call i32 @TEST_ASSERT(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @TEST_ASSERT(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @jerry_value_is_undefined(i32 %65)
  %67 = call i32 @TEST_ASSERT(i32 %66)
  %68 = call i32 (...) @jerry_get_global_object()
  store i32 %68, i32* %3, align 4
  %69 = call i32 @jerry_create_string(i32* bitcast ([20 x i8]* @.str to i32*))
  store i32 %69, i32* %4, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @jerry_acquire_value(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 11
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @jerry_define_own_property(i32 %74, i32 %75, %struct.TYPE_6__* %2)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @jerry_value_is_error(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_ASSERT(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @jerry_value_is_boolean(i32 %83)
  %85 = call i32 @TEST_ASSERT(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @jerry_get_boolean_value(i32 %86)
  %88 = call i32 @TEST_ASSERT(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @jerry_release_value(i32 %89)
  %91 = call i32 @jerry_free_property_descriptor_fields(%struct.TYPE_6__* %2)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @jerry_get_own_property_descriptor(i32 %92, i32 %93, %struct.TYPE_6__* %2)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @TEST_ASSERT(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = call i32 @TEST_ASSERT(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @jerry_value_is_string(i32 %103)
  %105 = call i32 @TEST_ASSERT(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST_ASSERT(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @TEST_ASSERT(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @TEST_ASSERT(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @TEST_ASSERT(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @jerry_value_is_undefined(i32 %127)
  %129 = call i32 @TEST_ASSERT(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @TEST_ASSERT(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @jerry_value_is_undefined(i32 %136)
  %138 = call i32 @TEST_ASSERT(i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @jerry_release_value(i32 %139)
  %141 = call i32 @jerry_free_property_descriptor_fields(%struct.TYPE_6__* %2)
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @jerry_release_value(i32 %142)
  %144 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_init_property_descriptor_fields(%struct.TYPE_6__*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_acquire_value(i32) #1

declare dso_local i32 @jerry_define_own_property(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_is_boolean(i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_free_property_descriptor_fields(%struct.TYPE_6__*) #1

declare dso_local i32 @jerry_get_own_property_descriptor(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @jerry_value_is_string(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
