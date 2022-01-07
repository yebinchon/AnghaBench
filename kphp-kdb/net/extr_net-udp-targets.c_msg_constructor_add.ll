; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_msg_constructor_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_msg_constructor_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_msg = type { i32 }
%struct.raw_message = type { i32 }
%struct.udp_target = type { i32, i32, i32 }
%struct.udp_msg_constructor = type { i32, i32, i32, %struct.raw_message* }

@.str = private unnamed_addr constant [75 x i8] c"msg_is_dup: duplicate message %d. S->send_num = %d, S->max_confirmed = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"packet_id = %d. %d parts left\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.udp_msg* @msg_constructor_add(%struct.raw_message* %0, i32 %1, i32 %2, i32 %3, %struct.udp_target* %4) #0 {
  %6 = alloca %struct.udp_msg*, align 8
  %7 = alloca %struct.raw_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.udp_target*, align 8
  %12 = alloca %struct.udp_msg_constructor**, align 8
  %13 = alloca %struct.udp_msg_constructor*, align 8
  %14 = alloca %struct.raw_message*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.udp_msg*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.udp_target* %4, %struct.udp_target** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @add_force_confirm(%struct.udp_target* %21, i32 %24)
  %26 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i64 @msg_is_dup(%struct.udp_target* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %35 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %38 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %42 = call i32 @rwm_free(%struct.raw_message* %41)
  store %struct.udp_msg* null, %struct.udp_msg** %6, align 8
  br label %162

43:                                               ; preds = %5
  %44 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @add_received(%struct.udp_target* %44, i32 %47)
  %49 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %50 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = bitcast i32* %8 to i8*
  %53 = call %struct.udp_msg_constructor** @tree_lookup_value_udp_msg_constructor(i32 %51, i8* %52)
  store %struct.udp_msg_constructor** %53, %struct.udp_msg_constructor*** %12, align 8
  %54 = load %struct.udp_msg_constructor**, %struct.udp_msg_constructor*** %12, align 8
  %55 = icmp ne %struct.udp_msg_constructor** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load %struct.udp_msg_constructor**, %struct.udp_msg_constructor*** %12, align 8
  %58 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %57, align 8
  store %struct.udp_msg_constructor* %58, %struct.udp_msg_constructor** %13, align 8
  br label %91

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = add i64 24, %62
  %64 = trunc i64 %63 to i32
  %65 = call %struct.udp_msg_constructor* @malloc(i32 %64)
  store %struct.udp_msg_constructor* %65, %struct.udp_msg_constructor** %13, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %68 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %71 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %74 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %76 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %75, i32 0, i32 3
  %77 = load %struct.raw_message*, %struct.raw_message** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(%struct.raw_message* %77, i32 0, i32 %81)
  %83 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %84 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %87 = call i32 (...) @lrand48()
  %88 = call i32 @tree_insert_udp_msg_constructor(i32 %85, %struct.udp_msg_constructor* %86, i32 %87)
  %89 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %90 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %59, %56
  %92 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %93 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %92, i32 0, i32 3
  %94 = load %struct.raw_message*, %struct.raw_message** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %94, i64 %96
  %98 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %99 = bitcast %struct.raw_message* %97 to i8*
  %100 = bitcast %struct.raw_message* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %102 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %107 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %111 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %91
  store %struct.udp_msg* null, %struct.udp_msg** %6, align 8
  br label %162

115:                                              ; preds = %91
  %116 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %117 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %116, i32 0, i32 3
  %118 = load %struct.raw_message*, %struct.raw_message** %117, align 8
  %119 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %118, i64 0
  store %struct.raw_message* %119, %struct.raw_message** %14, align 8
  store i32 1, i32* %15, align 4
  br label %120

120:                                              ; preds = %144, %115
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %123 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %120
  %127 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %128 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %127, i32 0, i32 3
  %129 = load %struct.raw_message*, %struct.raw_message** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %129, i64 %131
  %133 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.raw_message*, %struct.raw_message** %14, align 8
  %137 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %138 = getelementptr inbounds %struct.udp_msg_constructor, %struct.udp_msg_constructor* %137, i32 0, i32 3
  %139 = load %struct.raw_message*, %struct.raw_message** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %139, i64 %141
  %143 = call i32 @rwm_union(%struct.raw_message* %136, %struct.raw_message* %142)
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %120

147:                                              ; preds = %120
  %148 = load %struct.raw_message*, %struct.raw_message** %14, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %151 = call %struct.udp_msg* @udp_msg_create(%struct.raw_message* %148, i32 %149, %struct.udp_target* %150)
  store %struct.udp_msg* %151, %struct.udp_msg** %16, align 8
  %152 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %153 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %156 = call i32 @tree_delete_udp_msg_constructor(i32 %154, %struct.udp_msg_constructor* %155)
  %157 = load %struct.udp_target*, %struct.udp_target** %11, align 8
  %158 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load %struct.udp_msg_constructor*, %struct.udp_msg_constructor** %13, align 8
  %160 = call i32 @free(%struct.udp_msg_constructor* %159)
  %161 = load %struct.udp_msg*, %struct.udp_msg** %16, align 8
  store %struct.udp_msg* %161, %struct.udp_msg** %6, align 8
  br label %162

162:                                              ; preds = %147, %114, %32
  %163 = load %struct.udp_msg*, %struct.udp_msg** %6, align 8
  ret %struct.udp_msg* %163
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_force_confirm(%struct.udp_target*, i32) #1

declare dso_local i64 @msg_is_dup(%struct.udp_target*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

declare dso_local i32 @add_received(%struct.udp_target*, i32) #1

declare dso_local %struct.udp_msg_constructor** @tree_lookup_value_udp_msg_constructor(i32, i8*) #1

declare dso_local %struct.udp_msg_constructor* @malloc(i32) #1

declare dso_local i32 @memset(%struct.raw_message*, i32, i32) #1

declare dso_local i32 @tree_insert_udp_msg_constructor(i32, %struct.udp_msg_constructor*, i32) #1

declare dso_local i32 @lrand48(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rwm_union(%struct.raw_message*, %struct.raw_message*) #1

declare dso_local %struct.udp_msg* @udp_msg_create(%struct.raw_message*, i32, %struct.udp_target*) #1

declare dso_local i32 @tree_delete_udp_msg_constructor(i32, %struct.udp_msg_constructor*) #1

declare dso_local i32 @free(%struct.udp_msg_constructor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
