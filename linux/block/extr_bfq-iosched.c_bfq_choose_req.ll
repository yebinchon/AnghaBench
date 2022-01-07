; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_choose_req.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_choose_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i64 }
%struct.request = type { i32 }

@REQ_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.bfq_data*, %struct.request*, %struct.request*, i64)* @bfq_choose_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @bfq_choose_req(%struct.bfq_data* %0, %struct.request* %1, %struct.request* %2, i64 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.request* %2, %struct.request** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = icmp ne %struct.request* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.request*, %struct.request** %7, align 8
  %20 = load %struct.request*, %struct.request** %8, align 8
  %21 = icmp eq %struct.request* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %4
  %23 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %23, %struct.request** %5, align 8
  br label %180

24:                                               ; preds = %18
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = icmp ne %struct.request* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %28, %struct.request** %5, align 8
  br label %180

29:                                               ; preds = %24
  %30 = load %struct.request*, %struct.request** %7, align 8
  %31 = call i64 @rq_is_sync(%struct.request* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.request*, %struct.request** %8, align 8
  %35 = call i64 @rq_is_sync(%struct.request* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %38, %struct.request** %5, align 8
  br label %180

39:                                               ; preds = %33, %29
  %40 = load %struct.request*, %struct.request** %8, align 8
  %41 = call i64 @rq_is_sync(%struct.request* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.request*, %struct.request** %7, align 8
  %45 = call i64 @rq_is_sync(%struct.request* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %48, %struct.request** %5, align 8
  br label %180

49:                                               ; preds = %43, %39
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.request*, %struct.request** %7, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @REQ_META, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.request*, %struct.request** %8, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @REQ_META, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %65, %struct.request** %5, align 8
  br label %180

66:                                               ; preds = %57, %50
  %67 = load %struct.request*, %struct.request** %8, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @REQ_META, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.request*, %struct.request** %7, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @REQ_META, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %81, %struct.request** %5, align 8
  br label %180

82:                                               ; preds = %73, %66
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.request*, %struct.request** %7, align 8
  %85 = call i64 @blk_rq_pos(%struct.request* %84)
  store i64 %85, i64* %10, align 8
  %86 = load %struct.request*, %struct.request** %8, align 8
  %87 = call i64 @blk_rq_pos(%struct.request* %86)
  store i64 %87, i64* %11, align 8
  %88 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %89 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %9, align 8
  %99 = sub nsw i64 %97, %98
  store i64 %99, i64* %12, align 8
  br label %118

100:                                              ; preds = %83
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %101, %102
  %104 = load i64, i64* %9, align 8
  %105 = icmp uge i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %111 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = mul nsw i64 %109, %112
  store i64 %113, i64* %12, align 8
  br label %117

114:                                              ; preds = %100
  %115 = load i32, i32* %15, align 4
  %116 = or i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %114, %106
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub nsw i64 %123, %124
  store i64 %125, i64* %13, align 8
  br label %144

126:                                              ; preds = %118
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %127, %128
  %130 = load i64, i64* %9, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %11, align 8
  %135 = sub nsw i64 %133, %134
  %136 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %137 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = mul nsw i64 %135, %138
  store i64 %139, i64* %13, align 8
  br label %143

140:                                              ; preds = %126
  %141 = load i32, i32* %15, align 4
  %142 = or i32 %141, 2
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %140, %132
  br label %144

144:                                              ; preds = %143, %122
  %145 = load i32, i32* %15, align 4
  switch i32 %145, label %172 [
    i32 0, label %146
    i32 2, label %167
    i32 1, label %169
    i32 3, label %171
  ]

146:                                              ; preds = %144
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %13, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %151, %struct.request** %5, align 8
  br label %180

152:                                              ; preds = %146
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* %12, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %157, %struct.request** %5, align 8
  br label %180

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %164, %struct.request** %5, align 8
  br label %180

165:                                              ; preds = %159
  %166 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %166, %struct.request** %5, align 8
  br label %180

167:                                              ; preds = %144
  %168 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %168, %struct.request** %5, align 8
  br label %180

169:                                              ; preds = %144
  %170 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %170, %struct.request** %5, align 8
  br label %180

171:                                              ; preds = %144
  br label %172

172:                                              ; preds = %144, %171
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %11, align 8
  %175 = icmp sle i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %177, %struct.request** %5, align 8
  br label %180

178:                                              ; preds = %172
  %179 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %179, %struct.request** %5, align 8
  br label %180

180:                                              ; preds = %178, %176, %169, %167, %165, %163, %156, %150, %80, %64, %47, %37, %27, %22
  %181 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %181
}

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
