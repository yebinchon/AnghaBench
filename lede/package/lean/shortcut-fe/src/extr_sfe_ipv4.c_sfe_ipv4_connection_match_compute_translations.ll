; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_connection_match_compute_translations.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_connection_match_compute_translations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4_connection_match = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SFE_IPV4_CONNECTION_MATCH_FLAG_XLATE_SRC = common dso_local global i32 0, align 4
@SFE_IPV4_CONNECTION_MATCH_FLAG_XLATE_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv4_connection_match*)* @sfe_ipv4_connection_match_compute_translations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv4_connection_match_compute_translations(%struct.sfe_ipv4_connection_match* %0) #0 {
  %2 = alloca %struct.sfe_ipv4_connection_match*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sfe_ipv4_connection_match* %0, %struct.sfe_ipv4_connection_match** %2, align 8
  %19 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %20 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SFE_IPV4_CONNECTION_MATCH_FLAG_XLATE_SRC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %1
  %26 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %3, align 4
  %30 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %31 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %4, align 4
  %34 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %35 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %43 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %50 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 65535
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 16
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 65535
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 16
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %71 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %25, %1
  %73 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %74 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SFE_IPV4_CONNECTION_MATCH_FLAG_XLATE_DEST, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %72
  %80 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %81 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 16
  store i32 %83, i32* %10, align 4
  %84 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %85 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  store i32 %87, i32* %11, align 4
  %88 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %89 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, -1
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, 16
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, 65535
  store i32 %95, i32* %14, align 4
  %96 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %97 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, -1
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %104 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = and i32 %113, 65535
  %115 = load i32, i32* %16, align 4
  %116 = ashr i32 %115, 16
  %117 = add nsw i32 %114, %116
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, 65535
  %120 = load i32, i32* %16, align 4
  %121 = ashr i32 %120, 16
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %125 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %79, %72
  %127 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %128 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SFE_IPV4_CONNECTION_MATCH_FLAG_XLATE_SRC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %126
  %134 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %135 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %139 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %144 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %133
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %17, align 4
  br label %150

150:                                              ; preds = %147, %133
  %151 = load i32, i32* %17, align 4
  %152 = and i32 %151, 65535
  %153 = load i32, i32* %17, align 4
  %154 = ashr i32 %153, 16
  %155 = add nsw i32 %152, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = and i32 %156, 65535
  %158 = load i32, i32* %17, align 4
  %159 = ashr i32 %158, 16
  %160 = add nsw i32 %157, %159
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %163 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %162, i32 0, i32 11
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %150, %126
  %165 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %166 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SFE_IPV4_CONNECTION_MATCH_FLAG_XLATE_DEST, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %164
  %172 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %173 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %177 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %182 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %171
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %185, %171
  %189 = load i32, i32* %18, align 4
  %190 = and i32 %189, 65535
  %191 = load i32, i32* %18, align 4
  %192 = ashr i32 %191, 16
  %193 = add nsw i32 %190, %192
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = and i32 %194, 65535
  %196 = load i32, i32* %18, align 4
  %197 = ashr i32 %196, 16
  %198 = add nsw i32 %195, %197
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %2, align 8
  %201 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %200, i32 0, i32 12
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %188, %164
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
